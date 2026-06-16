//
//  NSEdgeInset+Convenience.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import Cocoa

extension NSEdgeInsets {
    
    var yTotal: CGFloat {
        return top + bottom
    }
    
    var xTotal: CGFloat {
        return left + right
    }
}
