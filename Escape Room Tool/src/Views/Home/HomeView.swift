//
//  HomeView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    @EnvironmentObject var windows: EscapeRoomWindow
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        VStack<AnyView> {
            switch windows.currentWindow {
            case .Menu:
                return AnyView(MenuView())
            case .Setup:
                return AnyView(SetupView().environmentObject(settings))
            case .Game:
                return AnyView(GameView())
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
