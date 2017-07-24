//
//  SettingsViewController.swift
//  Settings
//
//  Created by Joe Lucero on 7/24/17.
//  Copyright © 2017 Joe Lucero. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return SettingsController.shared.numberOfSettings
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create the custom cell here
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath) as? SettingTableViewCell
        let setting = SettingsController.shared.setting(at: indexPath)
        
        cell?.updateViews(with: setting)
        
        return cell ?? UITableViewCell()
    }

}
