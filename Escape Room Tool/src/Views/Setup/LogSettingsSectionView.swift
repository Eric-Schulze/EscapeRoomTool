//
//  LogSettingsSection.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct LogSettingsSectionView : View {
    var body: some View {
        VStack {
            Text("Log Options")
            
            LogSettingsListView()
        }
    }
}

struct LogSettingsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        LogSettingsSectionView()
        .environmentObject(GameSettings())
    }
}
