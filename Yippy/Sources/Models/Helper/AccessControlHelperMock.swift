//
//  AccessControlHelperMock.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import Cocoa

class AccessControlHelperMock: AccessControlHelper {
    
    override func isControlGranted() -> Bool {
        return AccessControlMock.isControlGranted()
    }
    
    override func isControlGranted(showPopup: Bool) -> Bool {
        return AccessControlMock.isControlGranted()
    }
}
