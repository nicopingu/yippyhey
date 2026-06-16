//
//  HistoryCacheMock.swift
//  YippyTests
//
//  Created by Nicolas Feschotte on 21/10/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
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
