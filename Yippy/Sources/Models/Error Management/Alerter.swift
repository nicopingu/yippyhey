//
//  Alerter.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import Cocoa

class Alerter {
    
    static var general = Alerter()
    
    func show(_ alertable: Alertable) {
        DispatchQueue.main.async {
            alertable.createAlert().runModal()
        }
    }
}
