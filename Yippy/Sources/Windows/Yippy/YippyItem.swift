//
//  YippyItem.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import Cocoa

protocol YippyItem {
    
    static var identifier: NSUserInterfaceItemIdentifier { get }
    
    static func getItemHeight(withYippyTableView yippyTableView: YippyTableView, forHistoryItem historyItem: HistoryItem) -> CGFloat
    
    func setHighlight(isSelected: Bool)
    
    func setupCell(withYippyTableView yippyTableView: YippyTableView, forHistoryItem historyItem: HistoryItem, at i: Int)
    
    static func makeItem() -> YippyItem
}
