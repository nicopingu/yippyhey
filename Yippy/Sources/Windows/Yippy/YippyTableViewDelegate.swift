//
//  YippyTableViewDelegate.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation

protocol YippyTableViewDelegate {
    
    func yippyTableView(_ yippyTableView: YippyTableView, selectedDidChange selected: Int?)
    
    func yippyTableView(_ yippyTableView: YippyTableView, didMoveItem from: Int, to: Int)
}
