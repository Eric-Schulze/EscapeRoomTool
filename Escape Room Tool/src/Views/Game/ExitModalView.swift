//
//  AdminCodeModal.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/20/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct ExitModalView: View {
    @EnvironmentObject var currentWindow: EscapeRoomWindow
    @EnvironmentObject var settings: GameSettings
    @Binding var showModal: Bool
    @State var adminCode: String = ""
    @State var correctAdminCode: Bool = true
    
    var body: some View {
        VStack {
            Text("Please Enter the Admin Code")
            .padding()
            
            if self.correctAdminCode {
                Text("Invalid Admin Code")
                    .hidden()
            }
            else {
                Text("Invalid Admin Code")
                    .foregroundColor(Color.red)
            }
            
            TextField("Admin Code", text: $adminCode)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(maxWidth: 200)
            
            HStack {
                Button("Exit Game") {
                    if self.adminCode == self.settings.adminCode {
                        self.correctAdminCode = true
                        self.currentWindow.setCurrentWindow(goToWindow: .Menu)
                    }
                    else {
                        self.correctAdminCode = false
                    }
                }
                .padding()
                
                Button("Cancel") {
                    self.showModal.toggle()
                }
                .padding()
            }
        }
        .frame(minWidth: 100, maxWidth: 250, minHeight: 100, maxHeight: 250)
    }
}

struct ExitModalView_Previews: PreviewProvider {
    static var previews: some View {
        ExitModalView(showModal: Binding.constant(true)).environmentObject(EscapeRoomWindow()).environmentObject(GameSettings())
    }
}
