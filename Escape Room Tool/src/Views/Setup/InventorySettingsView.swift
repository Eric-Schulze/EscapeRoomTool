//
//  InventorySettings.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct InventorySettingsView : View {
    @State var active: Bool = false
    @State var label: String = ""
    @State var code: String = ""
    var inventory: InventorySettings
    
    init(inventorySetting: InventorySettings) {
        inventory = inventorySetting
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Item #\(inventory.id)")
                .frame(maxHeight: 29)
                
                Text("Label")
                .frame(maxHeight: 29)
                .foregroundColor(active ? Color("EnabledText") : Color("DisabledText"))
                
                Text("Code")
                .frame(maxHeight: 29)
                .foregroundColor(active ? Color("EnabledText") : Color("DisabledText"))
            }
            
            VStack(alignment: .leading) {
                Toggle(isOn: $active){
                    Text("Active")
                }
                
                TextField("Label", text: $label)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(maxWidth: 100)
                .disabled(!active)
                .foregroundColor(active ? Color("EnabledText") : Color("DisabledText"))
                
                TextField("Code", text: $code)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(maxWidth: 100)
                .disabled(!active)
                .foregroundColor(active ? Color("EnabledText") : Color("DisabledText"))
            }
        }
        .padding()
        .frame(minWidth: 500, minHeight: 90)
    }
}

struct InventorySettingsView_Previews: PreviewProvider {
    static var previews: some View {
        InventorySettingsView(inventorySetting: InventorySettings(id: 1, active: true, label: "Item #1", code: "111", matching: true))
    }
}
