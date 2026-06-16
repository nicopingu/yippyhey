//
//  AlerterMock.swift
//  YippyTests
//
//  Created by Nicolas Feschotte on 20/10/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import XCTest
@testable import Yippy

class AlerterMock: Alerter {
    
    var expectation: XCTestExpectation!
    
    override func show(_ alertable: Alertable) {
        expectation.fulfill()
    }
}
