//
//  ErrorLoggerMock.swift
//  YippyTests
//
//  Created by Nicolas Feschotte on 20/10/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import XCTest
@testable import Yippy

class ErrorLoggerMock: ErrorLogger {
    
    var expectation: XCTestExpectation!
    
    init() {
        super.init(url: URL(fileURLWithPath: "test"))
    }
    
    override func log(_ loggable: Loggable) {
        expectation.fulfill()
    }
}
