//
//  NSMenu+Functional.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 6/8/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Cocoa

extension NSMenu {
    
    func with(menuItem: NSMenuItem) -> NSMenu {
        self.addItem(menuItem)
        return self
    }
}
