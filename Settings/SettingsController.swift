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
    
    private let mySettings: [Setting]
    
    var numberOfSettings: Int {
        return mySettings.count
    }
    
    // MARK: - Initializer
    
    init() {
        let music = Setting(name: "Setting", image: #imageLiteral(resourceName: "itunes"), isSet: false)
        let apps = Setting(name: "Apps", image: #imageLiteral(resourceName: "app"), isSet: true)
        let books = Setting(name: "Books", image: #imageLiteral(resourceName: "ibooks"), isSet: false)
        let updates = Setting(name: "Updates", image: #imageLiteral(resourceName: "app"), isSet: true)
        mySettings = [music, apps, books, updates]
    }
    
    func setting(at indexPath: IndexPath) -> Setting {
        return mySettings[indexPath.row]
    }
}
