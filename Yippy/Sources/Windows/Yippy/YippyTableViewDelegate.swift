//
//  YippyTableViewDelegate.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 27/10/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation

protocol YippyTableViewDelegate {
    
    func yippyTableView(_ yippyTableView: YippyTableView, selectedDidChange selected: Int?)
    
    func yippyTableView(_ yippyTableView: YippyTableView, didMoveItem from: Int, to: Int)
}
