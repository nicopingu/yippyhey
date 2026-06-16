//
//  XCUIApplication+Windows.swift
//  YippyUITests
//
//  Created by Nicolas Feschotte on 29/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
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
