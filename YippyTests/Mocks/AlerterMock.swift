//
//  AlerterMock.swift
//  YippyTests
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import XCTest
@testable import Yippy

class AlerterMock: Alerter {
    
    var expectation: XCTestExpectation!
    
    override func show(_ alertable: Alertable) {
        expectation.fulfill()
    }
}
