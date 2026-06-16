//
//  Loggable.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 17/10/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation

protocol Loggable {
    
    var localizedDescription: String { get }
    
    var consoleDescription: String { get }
    
    var logFileDescription: String { get }
    
    var domain: String { get }
    
    func log(with logger: Logger)
}

extension Loggable {
    
    func log(with logger: Logger) {
        logger.log(self)
    }
}
