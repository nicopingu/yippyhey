//
//  ArrayFileManagerMock.swift
//  YippyTests
//
//  Created by Nicolas Feschotte on 20/10/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import XCTest
@testable import Yippy

class ArrayFileManagerMock: ArrayFileManager {
    
    var order: NSArray?
    var shouldReadSucceed = true
    var shouldWriteSucceed = true
    
    override func read() -> NSArray? {
        if shouldReadSucceed {
            return order
        }
        else {
            return nil
        }
    }
    
    override func write(_ array: NSArray) throws {
        if shouldWriteSucceed {
            order = array
        }
        else {
            throw NSError(domain: "Testing skrt", code: 0, userInfo: [:])
        }
    }
}
