//
//  Loggable.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
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
