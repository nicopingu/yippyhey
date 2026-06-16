//
//  NSTextView+AttributedText.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import Cocoa

extension NSTextView {
    
    var attributedText: NSAttributedString! {
        get {
            guard let textStorage = textStorage else {
                return nil
            }
            
            return textStorage.attributedSubstring(from: NSRange(location: 0, length: textStorage.string.count))
        }
        set(str) {
            guard let textStorage = textStorage else {
                fatalError("Cannot set attributed string with nil textStorage")
            }
            let str = str ?? NSAttributedString(string: "")
            textStorage.setAttributedString(str)
        }
    }
}
