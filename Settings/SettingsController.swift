//
//  SettingsController.swift
//  Settings
//
//  Created by Joe Lucero on 7/24/17.
//  Copyright © 2017 Joe Lucero. All rights reserved.
//

import Foundation

class SettingsController {
    static let shared = SettingsController()
    
    let mySetting: [Setting]
    
    // MARK: - Initializer
    
    init() {
        let music = Setting(name: "Setting", image: #imageLiteral(resourceName: "itunes"), isSet: false)
        let apps = Setting(name: "Apps", image: #imageLiteral(resourceName: "app"), isSet: false)
        let books = Setting(name: "Books", image: #imageLiteral(resourceName: "ibooks"), isSet: false)
        let updates = Setting(name: "Updates", image: #imageLiteral(resourceName: "app"), isSet: false)
        mySetting = [music, apps, books, updates]
    }
}
