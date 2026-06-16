//
//  PasteboardType+Codable.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
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
