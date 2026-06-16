//
//  PasteboardMonitorDelegate.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 17/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

protocol PasteboardMonitorDelegate {
    
    /**
     Called when the pasteboard changes.
     
     - Parameter pasteboard: The pasteboard that changed.
     */
    func pasteboardDidChange(_ pasteboard: NSPasteboard, originBundleId: String?)
}
