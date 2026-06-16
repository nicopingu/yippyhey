//
//  XCUIApplication+Actions.swift
//  YippyUITests
//
//  Created by Nicolas Feschotte on 29/9/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import XCTest

extension XCUIApplication {
    
    func quit() {
        statusItemButton.click()
        quitButton.click()
    }
    
    func pressHotKey() {
        typeKey("v", modifierFlags: .init(arrayLiteral: .command, .shift))
    }
    
    func typeKey(_ key: XCUIKeyboardKey) {
        typeKey(key, modifierFlags: .init())
    }
}
