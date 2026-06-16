//
//  PreviewViewController.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 19/11/19.
//  Copyright © 2024 Nicolas Feschotte. All rights reserved.
//

import Foundation
import Cocoa
import RxSwift
import RxRelay

protocol PreviewViewController: NSViewController {
    
    static var identifier: NSStoryboard.SceneIdentifier { get }
    
    /**
     Asks the view controller to configure the view, and return the desired window frame.
     
     - Parameter item: The item to configure the preview of.
     - Returns: The desired window frame
     */
    func configureView(forItem item: HistoryItem) -> NSRect
}
