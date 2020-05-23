//
//  SettingsLogic.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/18/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var adminCode = "amyandkevinwilllose"
    @Published var numberOfLogs: Int = 4
    @Published var logsPerColumn: Int!
    @Published var numberOfInventory = 20
    @Published var inventoryPerColumn: Int!
    var logs: [LogSettings] = []
    var inventory: [InventorySettings] = []
    
    init(){
        logs = getLogSettings()
        logsPerColumn = numberOfLogs / 2
        inventoryPerColumn = numberOfInventory / 2
    }
    
    func getLogSetting(id: Int) -> LogSettings{
        if logs.count == 0 {
            logs = getLogSettings()
        }
        
        return logs[id]
    }
    
    func getLogSettings() -> [LogSettings]{
        return [
            LogSettings(id: 1, active: true, label: "Captain's Log", logText: "Label 1 Log Text"),
            LogSettings(id: 2, active: true, label: "Label #2", logText: ""),
            LogSettings(id: 3, active: false, label: "Label #3", logText: ""),
            LogSettings(id: 4, active: true, label: "Label #4", logText: "Label 4 Log Text")
        ]
        //When loading from usersettings, index=id-1
    }
    
    func getInventorySetting(id: Int) -> InventorySettings{
        if inventory.count == 0 {
            inventory = getInventorySettings()
        }
        
        return inventory[id]
    }
    
    func getInventorySettings() -> [InventorySettings]{
        return [
            InventorySettings(id: 1, active: true, label: "Item #1", code: "111", matching: true),
            InventorySettings(id: 2, active: true, label: "Item #2", code: "222", matching: true),
            InventorySettings(id: 3, active: false, label: "Item #3", code: "333", matching: true),
            InventorySettings(id: 4, active: true, label: "Item #4", code: "444", matching: true)
        ]
        //When loading from usersettings, index=id-1
    }
    
}
