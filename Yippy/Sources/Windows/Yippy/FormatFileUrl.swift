//
//  FormatFileUrl.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 15/10/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

func formatFileUrl(_ url: URL) -> NSAttributedString {
    let str = NSMutableAttributedString(string: url.path)
    
    let lastComponentAttributes: [NSAttributedString.Key: Any] = [
        .font: Constants.fonts.yippyFileNameText,
        .foregroundColor: NSColor.textColor
    ]
    
    let pathAttributes: [NSAttributedString.Key: Any] = [
        .font: Constants.fonts.yippyFileNameText,
        .foregroundColor: NSColor.secondaryLabelColor
    ]
    
    let deletedAttributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: NSColor.systemRed
    ]
    
    let startOfLast = url.path.count - url.lastPathComponent.count
    
    str.addAttributes(pathAttributes, range: NSRange(location: 0, length: startOfLast))
    str.addAttributes(lastComponentAttributes, range: NSRange(location: startOfLast, length: url.lastPathComponent.count))
    
    if !FileManager.default.fileExists(atPath: url.path) {
        str.addAttributes(deletedAttributes, range: NSRange(location: 0, length: url.path.count))
    }
    
    return str
}
