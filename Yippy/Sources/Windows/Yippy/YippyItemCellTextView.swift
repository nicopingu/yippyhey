//
//  YippyItemCellTextView.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 11/10/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

class YippyItemCellTextView: NSTextView {
    
    override func mouseDown(with event: NSEvent) {
        self.nextResponder?.mouseDown(with: event)
    }
    
    var textInset: NSEdgeInsets = NSEdgeInsetsZero {
        didSet {
            textContainerInset = CGSize(width: (textInset.left + textInset.right)/2, height: (textInset.top + textInset.bottom)/2)
        }
    }
    
    var usingEdgeInsets = false
    
    override var textContainerOrigin: NSPoint {
        if usingEdgeInsets {
            return NSPoint(x: textInset.left, y: textInset.top)
        }
        else {
            return super.textContainerOrigin
        }
    }
}
