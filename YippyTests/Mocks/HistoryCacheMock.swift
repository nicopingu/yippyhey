//
//  HistoryCacheMock.swift
//  YippyTests
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import XCTest
@testable import Yippy

class HistoryCacheMock: HistoryCache {
    
    var data: Data?
    
    var dataCallCount = 0
    
    override func data(withId id: UUID, forType type: NSPasteboard.PasteboardType) -> Data? {
        dataCallCount += 1
        return data
    }
}
