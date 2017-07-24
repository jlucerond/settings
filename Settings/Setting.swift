//
//  Setting.swift
//  Settings
//
//  Created by Joe Lucero on 7/24/17.
//  Copyright © 2017 Joe Lucero. All rights reserved.
//

import UIKit

class Setting {
    // MARK: - Properties
    let name: String
    let image: UIImage
    var isSet: Bool
    
    // MARK: - Initializer
    init(name: String, image: UIImage, isSet: Bool) {
        self.name = name
        self.image = image
        self.isSet = isSet
    }
}
