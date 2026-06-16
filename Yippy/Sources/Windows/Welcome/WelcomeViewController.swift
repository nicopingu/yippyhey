//
//  WelcomeViewController.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
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
