//
//  Alerter.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 20/10/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
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
