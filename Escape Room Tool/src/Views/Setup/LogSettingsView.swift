//
//  LogsSettings.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct LogSettingsView : View {
    @State var active: Bool = false
    @State var label: String = ""
    @State var logText: NSAttributedString = NSMutableAttributedString(string: "")
    var log: LogSettings
    
    init(logSetting: LogSettings) {
        log = logSetting
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Log #\(log.id)")
                .frame(maxHeight: 29)
                
                Text("Label")
                .frame(maxHeight: 29)
                .foregroundColor(active ? Color("EnabledText") : Color("DisabledText"))
            }
            
            VStack(alignment: .leading) {
                Toggle(isOn: $active){
                    Text("Active")
                }
                
                TextField("Label", text:$label)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(maxWidth: 100)
                .disabled(!active)
                .foregroundColor(active ? Color("EnabledText") : Color("DisabledText"))
            }
            
            VStack(alignment: .leading) {
                Text("Log Text")
                .frame(maxHeight: 29)
                .foregroundColor(active ? Color("EnabledText") : Color("DisabledText"))
            }
            
            VStack(alignment: .leading) {
                MutliLineTextField(text: $logText, disabled: $active)
                .cornerRadius(5)
                .frame(maxWidth: 300, maxHeight: 70)
            }
        }
        .padding()
        .frame(minWidth: 500, minHeight: 90)
    }
}

struct LogSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        LogSettingsView(logSetting: LogSettings(id: 1, active: true, label: "Captain's Log", logText: "Captain's Log Text"))
    }
}
