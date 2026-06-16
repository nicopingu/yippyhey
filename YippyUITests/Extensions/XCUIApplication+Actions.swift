//
//  XCUIApplication+Actions.swift
//  YippyUITests
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
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
