//
//  WarningLoggerMock.swift
//  YippyTests
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import XCTest
@testable import Yippy

class WarningLoggerMock: WarningLogger {
    
    var expectation: XCTestExpectation!
    
    init() {
        super.init(url: URL(fileURLWithPath: "test"))
    }
    
    override func log(_ loggable: Loggable) {
        expectation.fulfill()
    }
}
