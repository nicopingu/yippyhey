//
//  AccessControlMock.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 29/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

struct AccessControlMock {
    
    static let pasteboard = NSPasteboard(name: NSPasteboard.Name(rawValue: "Yippy.UITesting.AccessControl"))
    
    static func setControlGranted(_ access: Bool) {
        pasteboard.declareTypes([.string], owner: nil)
        let str = access ? "true" : "false"
        pasteboard.setString(str, forType: .string)
    }
    
    static func isControlGranted() -> Bool {
        return pasteboard.string(forType: .string) == "true"
    }
}
