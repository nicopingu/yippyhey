//
//  Alertable.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import Cocoa

protocol Alertable {
    
    func createAlert() -> NSAlert
    
    func show(with alerter: Alerter)
}

extension Alertable {
    
    func show(with alerter: Alerter) {
        alerter.show(self)
    }
}
