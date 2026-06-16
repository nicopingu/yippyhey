//
//  ErrorLogger.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation

class ErrorLogger: Logger {
    
    static let general = ErrorLogger(url: Constants.urls.errorLog)
}


