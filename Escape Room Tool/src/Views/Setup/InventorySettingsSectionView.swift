//
//  InventorySettingsSection.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/23/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct InventorySettingsSectionView : View {
    var body: some View {
        VStack {
            Text("Log Options")
            
            LogSettingsListView()
        }
    }
}

struct InventorySettingsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        InventorySettingsSectionView()
        .environmentObject(GameSettings())
    }
}
