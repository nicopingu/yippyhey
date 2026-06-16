//
//  SettingsWindowController.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 28/2/20.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation
import AppKit

class SettingsWindowController: NSWindowController {
    
    static func createSettingsWindowController() -> SettingsWindowController {
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier(stringLiteral: "SettingsWindowController")
        guard let windowController = storyboard.instantiateController(withIdentifier: identifier) as? SettingsWindowController else {
            fatalError("Failed to load SettingsWindowController of type SettingsWindowController from the Main storyboard.")
        }
        return windowController
    }
}
