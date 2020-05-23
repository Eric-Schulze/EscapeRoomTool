//
//  MenuView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct MenuView : View {
    @EnvironmentObject var currentWindow: EscapeRoomWindow
    
    var body: some View {
        VStack {
            Button("Setup Room"){
                self.currentWindow.setCurrentWindow(goToWindow: .Setup)
            }
            Button("Start Escape Game"){
                self.currentWindow.setCurrentWindow(goToWindow: .Game)
            }
        }
        .frame(minWidth: 500, maxWidth: .infinity, minHeight: 500, maxHeight: .infinity)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
