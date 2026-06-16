//
//  WarningLogger.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 17/10/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation

class WarningLogger: Logger {
    
    static let general = WarningLogger(url: Constants.urls.warningLog)
}
