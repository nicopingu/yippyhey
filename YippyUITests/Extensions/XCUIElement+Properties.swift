//
//  XCUIElement+Properties.swift
//  YippyUITests
//
//  Created by Nicolas Feschotte on 29/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import XCTest

extension XCUIElement {
    
    var isDisplayed: Bool {
        return exists && isHittable
    }
}
