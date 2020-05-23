//
//  InventoryItemView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct InventoryItemView : View {
    @State var active: Bool = false
    @State var label: String = ""
    @State var code: String = ""
    var inventory: InventorySettings
    
    init(inventorySetting: InventorySettings) {
        inventory = inventorySetting
    }
    
    var body: some View {
        HStack {
            Text("Label")
            .frame(maxHeight: 29)
            .foregroundColor(active ? Color("EnabledText") : Color("DisabledText"))
            
            TextField("Code", text: $code)
            .cornerRadius(5)
            .frame(maxWidth: 300, maxHeight: 70)
        }
        .padding()
        .frame(minWidth: 500, minHeight: 90)
    }
}

struct InventoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryItemView(inventorySetting: InventorySettings(id: 1, active: true, label: "Item 1", code: "111", matching: true))
    }
}

