//
//  PasteboardMonitor.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 17/9/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

class PasteboardMonitor {
    
    // Normal polling interval (balanced for battery and responsiveness)
    private let normalInterval: TimeInterval = 0.2
    
    // Fast polling interval when app becomes active (to catch rapid changes)
    private let fastInterval: TimeInterval = 0.05
    
    // Duration to use fast polling after app switch
    private let fastPollingDuration: TimeInterval = 2.0
    
    private var timer: Timer!
    private var lastChangeCount: Int!
    
    var pasteboard: NSPasteboard!
    var delegate: PasteboardMonitorDelegate!
    
    private var frontmostApp: String? = nil
    private var fastPollingDeadline: Date? = nil
    
    init(pasteboard: NSPasteboard, changeCount: Int = -1, delegate: PasteboardMonitorDelegate) {
        self.pasteboard = pasteboard
        self.delegate = delegate
        self.lastChangeCount = changeCount
        
        // Register for app activation notifications
        NSWorkspace.shared.notificationCenter.addObserver(
            self, 
            selector: #selector(activeApp(sender:)), 
            name: NSWorkspace.didActivateApplicationNotification, 
            object: nil
        )
        
        // Initial check
        self.checkIfPasteboardChanged()
        
        // Start with normal polling
        self.startTimer(withInterval: normalInterval)
    }
    
    // Called by NSWorkspace when any application becomes active or comes frontmost.
    @objc private func activeApp(sender: NSNotification) {
        if let info = sender.userInfo,
            let content = info[NSWorkspace.applicationUserInfoKey] as? NSRunningApplication,
            let bundle = content.bundleIdentifier
        {
            frontmostApp = bundle
            
            // Switch to fast polling for a short period
            self.startTimer(withInterval: fastInterval)
            self.fastPollingDeadline = Date().addingTimeInterval(fastPollingDuration)
            
            // After fast polling period, return to normal
            DispatchQueue.main.asyncAfter(deadline: .now() + fastPollingDuration) { [weak self] in
                self?.startTimer(withInterval: self?.normalInterval ?? 0.2)
                self?.fastPollingDeadline = nil
            }
        }
    }
    
    private func startTimer(withInterval interval: TimeInterval) {
        // Invalidate existing timer
        timer?.invalidate()
        
        // Start new timer with specified interval
        timer = Timer.scheduledTimer(
            withTimeInterval: interval, 
            repeats: true
        ) { [weak self] _ in
            self?.checkIfPasteboardChanged()
            
            // Check if fast polling period has expired
            if let deadline = self?.fastPollingDeadline, deadline < Date() {
                self?.startTimer(withInterval: self?.normalInterval ?? 0.2)
                self?.fastPollingDeadline = nil
            }
        }
    }
    
    private func checkIfPasteboardChanged() {
        if lastChangeCount != pasteboard.changeCount {
            lastChangeCount = self.pasteboard.changeCount
            delegate.pasteboardDidChange(pasteboard, originBundleId: frontmostApp)
        }
    }
    
    deinit {
        timer?.invalidate()
        NSWorkspace.shared.notificationCenter.removeObserver(self)
    }
}
