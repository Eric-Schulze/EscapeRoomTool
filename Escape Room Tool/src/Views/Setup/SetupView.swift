//
//  SetupView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct SetupView : View {
    @EnvironmentObject var currentWindow: EscapeRoomWindow
    
    var body: some View {
        ScrollView ([.horizontal, .vertical]) {
            VStack {
                Text("ESCAPE ROOM SETTINGS")
                    .padding()
                
                DurationSettingsView()
                    .frame(maxHeight: 140)
                
                Divider()
                
                InventorySettingsSectionView()
                
                Divider()
                
                LogSettingsSectionView()
                
                Divider()
                
                HStack {
                    Button(action: {
                        self.currentWindow.setCurrentWindow(goToWindow: .Menu)
                    }){
                        Text("Save")
                    }
                    .blueButtonStyle()
                    
                    Button(action: {
                        self.currentWindow.setCurrentWindow(goToWindow: .Menu)
                    }){
                        Text("Cancel")
                    }
                    .grayButtonStyle()
                }
            }
            .frame(minWidth: 400, minHeight: 400)
        }
    }
}

struct SetupView_Previews: PreviewProvider {
    static var previews: some View {
        SetupView()
        .environmentObject(GameSettings())
    }
}
