//
//  WaitingViewController.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import Cocoa

class WaitingViewController: NSViewController {
    
    @IBAction func allowAccessClicked(_ sender: Any) {
        _ = Helper.isControlGranted(showPopup: true)
    }
}
