//
//  Alertable.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 17/10/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
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
