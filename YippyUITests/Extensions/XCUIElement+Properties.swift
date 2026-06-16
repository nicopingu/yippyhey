//
//  XCUIElement+Properties.swift
//  YippyUITests
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import XCTest

extension XCUIElement {
    
    var isDisplayed: Bool {
        return exists && isHittable
    }
}
