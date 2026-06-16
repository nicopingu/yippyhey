//
//  SettingsTabViewController.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 12/4/20.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

class SettingsTabViewController: NSTabViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabViewItems[0].image = NSImage(imageLiteralResourceName: "gear")
        tabViewItems[1].image = NSImage(imageLiteralResourceName: "command")
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        
        tabView.selectTabViewItem(at: 0)
        tabView(tabView, didSelect: tabView.tabViewItem(at: 0))
    }
    
    override func tabView(_ tabView: NSTabView, didSelect tabViewItem: NSTabViewItem?) {
        if let window = tabView.window, let tabViewItem = tabViewItem {
            window.title = tabViewItem.label
        }
    }
}
