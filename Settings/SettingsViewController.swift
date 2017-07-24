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
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell
        let setting = SettingsController.shared.setting(at: indexPath)
        
        cell?.updateViews(with: setting)
        cell?.delegate = self
        
        return cell ?? UITableViewCell()
    }

}

// MARK: - SettingTableViewCellDelegate Protocol
extension SettingsViewController: SettingTableViewCellDelegate {
    func switchValueChangedOn(cell: SettingTableViewCell, to bool: Bool) {
        guard let cellIndexPath = tableView.indexPath(for: cell) else {
            return
        }
        
        let setting = SettingsController.shared.setting(at: cellIndexPath)
        
        tableView.beginUpdates()
        setting.isSet = bool
        tableView.reloadRows(at: [cellIndexPath], with: .automatic)
        tableView.endUpdates()
    }
    
}
