//
//  Array+Functional.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 25/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation

extension Array {
    
    func with(elementAppened element: Element) -> Array {
        var copy = self
        copy.append(element)
        return copy
    }
    
    func with(element: Element, insertedAt i: Int) -> Array {
        var copy = self
        copy.insert(element, at: i)
        return copy
    }
    
    func without(elementAt i: Int) -> Array {
        var copy = self
        copy.remove(at: i)
        return copy
    }
}
