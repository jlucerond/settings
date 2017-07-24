//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Joe Lucero on 7/24/17.
//  Copyright © 2017 Joe Lucero. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    // Image
    @IBOutlet weak var iconImageView: UIImageView!
    
    // Label
    @IBOutlet weak var settingLabel: UILabel!
    
    // Switch
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK: - Lifecycle
    func updateViews(with setting: Setting?) {
        guard let setting = setting else {
            return
        }
        
        iconImageView.image = setting.image
        settingLabel.text = setting.name
        settingSwitch.isOn = setting.isSet
        
        self.backgroundColor = setting.isSet ? .yellow : .white
    }

}
