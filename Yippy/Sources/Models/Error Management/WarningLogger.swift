//
//  WarningLogger.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation

class WarningLogger: Logger {
    
    static let general = WarningLogger(url: Constants.urls.warningLog)
}
