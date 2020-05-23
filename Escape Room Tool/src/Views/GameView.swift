//
//  ContentView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/15/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var settings: GameSettings
    @EnvironmentObject var currentWindow: EscapeRoomWindow
    @State var showAdminCodeModal: Bool = false
    
    var body: some View {
        HStack(){
            GeometryReader {geometryOuter in
                VStack(alignment: .center) {
                    GeometryReader { geometryInner1 in
                        HStack(alignment: .center) {
                            VStack(alignment: .center){
                                Text("NAVSYS-3000")
                                    .padding(.top, 30)
                                    .padding(.bottom, -20)
                                    .foregroundColor(.green)
                                    .font(.system(size: 25))
                                
                                RadarView()
                            }
                            .frame(width: geometryInner1.size.width / 2)
                            
                            Divider()
                            
                            VStack(alignment: .center){
                                Text("Hello, World Top Left")
                            }
                            .frame(width: geometryInner1.size.width / 2)
                        }
                    }
                    .frame(height: (geometryOuter.size.height / 3) * 2)
                    
                    Divider()
                    
                    GeometryReader { geometryInner2 in
                        HStack(alignment: .center){
                            VStack(alignment: .center){
                                LogsView()
                                    .environmentObject((self.settings))
                            }
                            .frame(width: geometryInner2.size.width / 4)
                            
                            Divider()
                            
                            VStack(alignment: .center){
                                HStack {
                                    CountdownView()
                                    
                                    Button(action: {
                                        self.showAdminCodeModal.toggle()
                                    }){
                                        Text("X")
                                    }.sheet(isPresented: self.$showAdminCodeModal) {
                                        ExitModalView(showModal: self.$showAdminCodeModal).environmentObject(self.settings).environmentObject(self.currentWindow)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    .padding()
                                    .frame(minWidth: 100)
                                    .background(Color.black)
                                    .cornerRadius(5)
                                    .font(.system(size: 15))
                                }
                            }
                            .frame(width: (geometryInner2.size.width / 4) * 3)
                        }
                    }
                    .frame(height: (geometryOuter.size.height / 3))
                }
            }
            .frame(minWidth: 600, minHeight: 500)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
        .environmentObject(GameSettings())
        .environmentObject(EscapeRoomWindow())
    }
}
