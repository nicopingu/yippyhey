//
//  ErrorLogger.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 17/10/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Foundation

class ErrorLogger: Logger {
    
    static let general = ErrorLogger(url: Constants.urls.errorLog)
}


