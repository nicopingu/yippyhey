//
//  XCUIApplication+StaticTexts.swift
//  YippyUITests
//
//  Created by Nicolas Feschotte on 29/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import XCTest

extension XCUIApplication {
    
    var waitingForControlLabel: XCUIElement {
        return helpWindow.staticTexts[Accessibility.identifiers.waitingForControlLabel]
    }
    
    var howToUseLabel: XCUIElement {
        return helpWindow.staticTexts[Accessibility.identifiers.howToUseLabel]
    }
}
