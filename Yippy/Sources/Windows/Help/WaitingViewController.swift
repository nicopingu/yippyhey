//
//  WaitingViewController.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 12/9/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

class WaitingViewController: NSViewController {
    
    @IBAction func allowAccessClicked(_ sender: Any) {
        _ = Helper.isControlGranted(showPopup: true)
    }
}
