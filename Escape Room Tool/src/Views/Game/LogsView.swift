//
//  LogsView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct LogsView: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        HStack {
            VStack (alignment: .center) {
                ForEach(0..<settings.logsPerColumn){ i in
                    LogButtonView(logSetting: self.settings.getLogSetting(id: i * 2))
                    .padding()
                }
            }
            
            VStack(alignment: .center) {
                ForEach(0..<settings.logsPerColumn){ i in
                    LogButtonView(logSetting: self.settings.getLogSetting(id: i * 2 + 1))
                    .padding()
                }
            }
        }
    }
}

struct LogsView_Previews: PreviewProvider {
    static var previews: some View {
        LogsView()
        .environmentObject(GameSettings())
    }
}

