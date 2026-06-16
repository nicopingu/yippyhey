//
//  KeyDownEventMonitor.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 22/9/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

class KeyDownEventMonitor: EventMonitor {
    
    init(handler: @escaping (NSEvent) -> Void) {
        super.init(eventTypeMask: .keyDown, handler: handler)
    }
}
