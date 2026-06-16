//
//  NSLayoutDimension+Constraint.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
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
