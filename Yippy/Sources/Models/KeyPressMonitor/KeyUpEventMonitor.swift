//
//  KeyUpEventMonitor.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import Cocoa

class KeyUpEventMonitor: EventMonitor {
    
    init(handler: @escaping (NSEvent) -> Void) {
        super.init(eventTypeMask: .keyUp, handler: handler)
    }
}
