//
//  DataFileManager.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 21/10/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation

class DataFileManager {
    
    func loadData(contentsOf url: URL) throws -> Data {
        return try Data(contentsOf: url)
    }
    
    func writeData(_ data: Data, to url: URL, options: Data.WritingOptions = []) throws {
        try data.write(to: url, options: options)
    }
}
