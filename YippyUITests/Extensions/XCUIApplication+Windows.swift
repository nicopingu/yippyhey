//
//  XCUIApplication+Windows.swift
//  YippyUITests
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import XCTest

extension XCUIApplication {
    
    var welcomeWindow: XCUIElement {
        return windows[Accessibility.identifiers.welcomeWindow]
    }
    
    var helpWindow: XCUIElement {
        return windows[Accessibility.identifiers.helpWindow]
    }
    
    var aboutWindow: XCUIElement {
        return windows[Accessibility.identifiers.aboutWindow]
    }
    
    var yippyWindow: XCUIElement {
        return windows[Accessibility.identifiers.yippyWindow]
    }
}
