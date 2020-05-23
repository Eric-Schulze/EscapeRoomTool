//
//  EscapeRoomWindow.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

class EscapeRoomWindow: ObservableObject {
    @Published var currentWindow: EscapeRoomWindows = .Menu
    
    func setCurrentWindow(goToWindow: EscapeRoomWindows){
        currentWindow = goToWindow
    }
}
