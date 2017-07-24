//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Joe Lucero on 7/24/17.
//  Copyright © 2017 Joe Lucero. All rights reserved.
//

import UIKit

// MARK: - SettingTableViewCellDelegate Protocol
protocol SettingTableViewCellDelegate: class {
    func switchValueChangedOn(cell: SettingTableViewCell, to bool: Bool)
}

// MARK: - SettingTableViewCell Class
class SettingTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    // Image
    @IBOutlet weak var iconImageView: UIImageView!
    
    // Label
    @IBOutlet weak var settingLabel: UILabel!
    
    // Switch
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK: - Variables
    weak var delegate: SettingTableViewCellDelegate?
    
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
    
    // MARK: - IBActions
    @IBAction func switchValueChanged() {
        delegate?.switchValueChangedOn(cell: self, to: settingSwitch.isOn)
    }
    
}
