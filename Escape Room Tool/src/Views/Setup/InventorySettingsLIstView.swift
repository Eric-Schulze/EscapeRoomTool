//
//  InventorySettingsLIst.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/23/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct InventorySettingsListView : View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        HStack {
            VStack {
                ForEach(0..<settings.inventoryPerColumn){ i in
                    InventorySettingsView(inventorySetting: self.settings.getInventorySetting(id: i * 2))
                }
            }
            
            Spacer()
            
            VStack {
                ForEach(0..<settings.logsPerColumn){ i in
                    InventorySettingsView(inventorySetting: self.settings.getInventorySetting(id: i * 2 + 1))
                }
            }
        }
    }
}

struct InventorySettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        InventorySettingsListView()
        .environmentObject(GameSettings())
    }
}
