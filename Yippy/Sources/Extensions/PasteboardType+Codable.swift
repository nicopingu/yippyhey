//
//  PasteboardType+Codable.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 11/10/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

extension NSPasteboard.PasteboardType:  @retroactive Codable {
    // Literally don't need to do anything
}

extension NSPasteboard.PasteboardType {
    
    static var defaultTypes: [NSPasteboard.PasteboardType] {
        return [.color, .fileContents, .fileURL, .fileURL, .findPanelSearchOptions, .font, .html, .multipleTextSelection, .pdf, .png, .rtf, .rtfd, .ruler, .sound, .string, .tabularText, .textFinderOptions, .tiff, .URL]
    }
}
