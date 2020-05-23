//
//  LogTextModalView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/20/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct LogTextModalView: View {
    @Binding var showModal: Bool
    var logText: String
    
    var body: some View {
        VStack {
            ScrollView {
                Text(logText)
                    .padding()
            }
            Button("Dismiss") {
                self.showModal.toggle()
            }
            .padding()
        }
        .frame(minWidth: 200, maxWidth: 400, minHeight: 200, maxHeight: 300)
    }
}

struct LogTextModalView_Previews: PreviewProvider {
    static var previews: some View {
        LogTextModalView(showModal: Binding.constant(true), logText: "Test Modal")
    }
}
