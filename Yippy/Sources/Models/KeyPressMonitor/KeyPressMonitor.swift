//
//  KeyPressMonitor.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import Cocoa
import HotKey

class KeyPressMonitor {
    
    var keyUpMonitor: EventMonitor!
    var keyDownMonitor: EventMonitor!
    var specialKeyMonitor: SpecialKeyChangedEventMonitor!
    
    var allowedModifierFlags: NSEvent.ModifierFlags
    
    var keysDown = Set<Key>()
    var modifiers: NSEvent.ModifierFlags = .init()
    
    var keyActionHandlers = Set<KeyActionHandler>()
    
    typealias KeyDownHandler = ([Key], NSEvent.ModifierFlags) -> Void
    
    var keyDownHandlers = [KeyDownHandler]()
    
    var isPaused: Bool = true {
        didSet {
            keyUpMonitor.isActive = !isPaused
            keyDownMonitor.isActive = !isPaused
            specialKeyMonitor.isActive = !isPaused
        }
    }
    
    init(allowedModifierFlags: NSEvent.ModifierFlags = NSEvent.ModifierFlags.recommended) {
        self.allowedModifierFlags = allowedModifierFlags
        self.keyUpMonitor = KeyUpEventMonitor(handler: onKeyUp)
        self.keyDownMonitor = KeyDownEventMonitor(handler: onKeyDown)
        self.specialKeyMonitor = SpecialKeyChangedEventMonitor(handler: onSpecialKeyChange)
    }
    
    func handleAction(_ action: KeyAction, forKey key: Key, withModifiers modifiers: NSEvent.ModifierFlags, isExclusive: Bool = false, handler: @escaping () -> Void) {
        // TODO: Refactor this to remove the warning
        if !modifiers.isSubset(of: allowedModifierFlags) {
            // Warning: Action handler contains not allowed modifier flags
        }
        
        let keyActionHandler = KeyActionHandler(action: action, key: key, modifiers: modifiers.intersection(allowedModifierFlags), isExclusive: isExclusive, handler: handler)
        
        if keyActionHandlers.remove(keyActionHandler) != nil {
            // Handler already existed, removed and replaced
        }
        keyActionHandlers.insert(keyActionHandler)
    }
    
    func subscribeToKeyDown(_ handler: @escaping KeyDownHandler) {
        keyDownHandlers.append(handler)
    }
    
    private func checkKeyUpHandlers(forKey key: Key) {
        if let handler = keyActionHandlers.filter({ $0.key == key && $0.action == .up && $0.modifiers.equals(modifiers) }).first {
            handler.handler()
        }
    }
    
    private func checkKeyDownHandlers(forKey key: Key) {
        if let handler = keyActionHandlers.filter({ $0.key == key && $0.action == .down && $0.modifiers.equals(modifiers) }).first {
            handler.handler()
        }
    }
    
    private func checkHandlers(forKey key: Key, withAction action: KeyAction) {
        // Key Up
        if action == .up {
            checkKeyUpHandlers(forKey: key)
        }
        
        // Key down
        if action == .down {
            checkKeyDownHandlers(forKey: key)
        }
    }
    
    private func keyUp(_ key: Key) {
        if keysDown.remove(key) != nil {
            // Key removed from down set
        }
        else {
            // Key not found in down set
        }
        checkHandlers(forKey: key, withAction: .up)
    }
    
    private func keyDown(_ key: Key) {
        keysDown.insert(key)
        // Key added to down set
        checkHandlers(forKey: key, withAction: .down)
        keyDownHandlers.forEach { $0(self.keysDown.map{$0}, self.modifiers) }
    }
    
    private func onSpecialKeyChange(_ event: NSEvent) {
        // Update modifiers when special keys (like Cmd, Shift, Ctrl) change
        let newModifiers = event.modifierFlags.intersection(allowedModifierFlags)
        if newModifiers != modifiers {
            modifiers = newModifiers
            // Notify handlers about modifier change
            keyDownHandlers.forEach { $0(self.keysDown.map{$0}, modifiers) }
        }
    }
    
    private func onKeyUp(_ event: NSEvent) {
        modifiers = event.modifierFlags.intersection(allowedModifierFlags)
        if let key = Key(carbonKeyCode: UInt32(event.keyCode)) {
            keyUp(key)
        }
        else {
            // Could not create Key enum with keyCode: event.keyCode
        }
    }
    
    private func onKeyDown(_ event: NSEvent) {
        modifiers = event.modifierFlags.intersection(allowedModifierFlags)
        if let key = Key(carbonKeyCode: UInt32(event.keyCode)) {
            keyDown(key)
        }
        else {
            // Could not create Key enum with keyCode: event.keyCode
        }
    }
}
