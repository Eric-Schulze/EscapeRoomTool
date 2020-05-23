//
//  LogSettingsList.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct LogSettingsListView : View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        HStack {
            VStack {
                ForEach(0..<settings.logsPerColumn){ i in
                    LogSettingsView(logSetting: self.settings.getLogSetting(id: i * 2))
                }
            }
            
            Spacer()
            
            VStack {
                ForEach(0..<settings.logsPerColumn){ i in
                    LogSettingsView(logSetting: self.settings.getLogSetting(id: i * 2 + 1))
                }
            }
        }
    }
}

struct LogSettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        LogSettingsListView()
        .environmentObject(GameSettings())
    }
}
