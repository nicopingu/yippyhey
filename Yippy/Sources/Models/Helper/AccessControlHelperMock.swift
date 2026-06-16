//
//  AccessControlHelperMock.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 28/9/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
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
