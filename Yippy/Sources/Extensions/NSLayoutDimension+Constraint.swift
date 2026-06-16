//
//  NSLayoutDimension+Constraint.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 5/10/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

extension NSLayoutDimension {
    
    // https://stackoverflow.com/a/39111696
    
    @objc func constraint(equalToConstant constant: CGFloat, withIdentifier identifier: String) -> NSLayoutConstraint! {
        let constraint = self.constraint(equalToConstant: constant)
        constraint.identifier = identifier
        return constraint
    }
}
