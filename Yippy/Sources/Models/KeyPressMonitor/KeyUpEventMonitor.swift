//
//  KeyUpEventMonitor.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 22/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

class KeyUpEventMonitor: EventMonitor {
    
    init(handler: @escaping (NSEvent) -> Void) {
        super.init(eventTypeMask: .keyUp, handler: handler)
    }
}
