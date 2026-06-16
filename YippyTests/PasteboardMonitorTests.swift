//
//  PasteboardMonitorTests.swift
//  YippyTests
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import XCTest
@testable import Yippy

class PasteboardMonitorTests: XCTestCase {
    
    func testPasteboardDidChangeCalled() {
        // 1. Given
        let pasteboard = NSPasteboard(name: NSPasteboard.Name(rawValue: "test"))
        let delegate = PasteboardMonitorDelegateMock(expectation: self.expectation(description: "pasteboardDidChangeCalled"))
        _ = PasteboardMonitor(pasteboard: pasteboard, delegate: delegate)
        
        // 2. Add something to the pasteboard
        pasteboard.setString("test", forType: .string)
        
        // 3. Assert delegate function called
        XCTAssertEqual(pasteboard.string(forType: .string), "test")
        waitForExpectations(timeout: 1, handler: nil)
    }

    func testPerformancePasteboardChangeDetection() {
        self.measure {
            testPasteboardDidChangeCalled()
        }
    }
}

class PasteboardMonitorDelegateMock: PasteboardMonitorDelegate {
    
    var expectation: XCTestExpectation
    
    init(expectation: XCTestExpectation) {
        self.expectation = expectation
    }
    
    func pasteboardDidChange(_ pasteboard: NSPasteboard) {
        expectation.fulfill()
    }
}
