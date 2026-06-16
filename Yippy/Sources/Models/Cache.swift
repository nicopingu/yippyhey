//
//  Cache.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 9/2/20.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation

class Cache<Value, ID: Hashable, Context: Equatable> {
    
    var heights: [ID: Value]
    
    private var context: Context?
    
    init() {
        self.heights = [:]
    }
    
    func cellHeight(forId id: ID, withContext context: Context) -> Value? {
        guard context == self.context else {
            return nil
        }
        
        return heights[id]
    }
    
    func storeCellHeight(_ height: Value, forId id: ID, withContext context: Context) {
        if self.context != context {
            self.context = context
            self.heights.removeAll()
        }
        
        heights[id] = height
    }
    
    func removeCellHeight(forId id: ID) {
        heights.removeValue(forKey: id)
    }
    
    func clearCache() {
        heights.removeAll()
    }
}
