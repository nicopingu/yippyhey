//
//  PasteboardMonitorDelegate.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
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
