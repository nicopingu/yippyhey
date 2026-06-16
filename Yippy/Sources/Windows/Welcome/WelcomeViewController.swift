//
//  WelcomeViewController.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 11/9/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa

class WelcomeViewController: NSViewController {
    
    @IBOutlet var allowAccessButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allowAccessButton.setAccessibilityIdentifier(Accessibility.identifiers.welcomeAllowAccessButton)
    }
    
    @IBAction func allowAccessTapped(_ sender: Any) {
        view.window?.close()
        Controller.main.helpWindowController.showWindow(sender)
        _ = Helper.isControlGranted(showPopup: true)
    }
}
