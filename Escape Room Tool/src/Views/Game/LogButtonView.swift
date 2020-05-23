//
//  LogButtonView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/20/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct LogButtonView: View {
    var logSetting: LogSettings
    @State private var showModal = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showModal.toggle()
            }){
                Text(self.logSetting.label)
            }.sheet(isPresented: $showModal) {
                LogTextModalView(showModal: self.$showModal, logText: self.logSetting.logText)
            }
            .blackButtonStyle()

        }
    }
}

struct LogButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogButtonView(logSetting: LogSettings(id: 1, active: true, label: "Captain's Log", logText: "This is the Captain's Log"))
    }
}
