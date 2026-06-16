//
//  KeyPressHelper.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 30/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation
import CoreGraphics 
class KeyPressHelper {
    
    func press(keyCode: CGKeyCode, flags: CGEventFlags) {
        let sourceRef = CGEventSource(stateID: .combinedSessionState)
        
        if sourceRef == nil {
            NSLog("FakeKey: No event source")
            return
        }
        
        let keyDownEvent = CGEvent(keyboardEventSource: sourceRef,
                                   virtualKey: keyCode,
                                   keyDown: true)
        keyDownEvent?.flags = flags
        
        let keyUpEvent = CGEvent(keyboardEventSource: sourceRef,
                                 virtualKey: keyCode,
                                 keyDown: false)
        
        keyDownEvent?.post(tap: .cghidEventTap)
        keyUpEvent?.post(tap: .cghidEventTap)
    }
}
