//
//  KeyPressHelperMock.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import CoreGraphics 
class KeyPressHelperMock: KeyPressHelper {
    
    override func press(keyCode: CGKeyCode, flags: CGEventFlags) {
        KeyPressMock.keyPress(keyCode: keyCode, flags: flags)
    }
}
