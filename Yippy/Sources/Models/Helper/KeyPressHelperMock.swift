//
//  KeyPressHelperMock.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 30/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation
import CoreGraphics 
class KeyPressHelperMock: KeyPressHelper {
    
    override func press(keyCode: CGKeyCode, flags: CGEventFlags) {
        KeyPressMock.keyPress(keyCode: keyCode, flags: flags)
    }
}
