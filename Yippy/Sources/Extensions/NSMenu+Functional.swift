//
//  NSMenu+Functional.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Cocoa

extension NSMenu {
    
    func with(menuItem: NSMenuItem) -> NSMenu {
        self.addItem(menuItem)
        return self
    }
}
