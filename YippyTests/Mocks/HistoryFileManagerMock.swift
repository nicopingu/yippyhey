//
//  HistoryFileManagerMock.swift
//  YippyTests
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import XCTest
@testable import Yippy

class HistoryFileManagerMock: HistoryFileManager {
    
    var dataCallCount = 0
    var data = [UUID: [NSPasteboard.PasteboardType: Data]]()
    
    override func loadData(forItemWithId id: UUID, andType type: NSPasteboard.PasteboardType) -> Data? {
        dataCallCount += 1
        if let d = data[id]?[type] {
            return d
        }
        return nil
    }
}
