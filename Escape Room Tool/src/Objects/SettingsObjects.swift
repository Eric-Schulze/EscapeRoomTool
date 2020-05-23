//
//  Settings.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct LogSettings {
    var id: Int = 0
    var active: Bool = false
    var label: String = "Log"
    var logText: String = ""
    
    init(id: Int, active: Bool, label: String, logText: String){
        self.id = id
        self.active = active
        self.label = label
        self.logText = logText
    }
}

struct InventorySettings {
    var id: Int = 0
    var active: Bool = false
    var label: String = "Inventory Item"
    var code: String = ""
    var matchingOneToOne: Bool = true
    
    init(id: Int, active: Bool, label: String, code: String, matching: Bool){
        self.id = id
        self.active = active
        self.label = label
        self.code = code
        self.matchingOneToOne = matching
    }
}
