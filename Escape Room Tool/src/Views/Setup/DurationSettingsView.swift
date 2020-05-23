//
//  DurationSettings.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct DurationSettingsView : View {
    @State var hours: String = ""
    @State var minutes: String = ""
    @State var seconds: String = ""
    var fields: [(label: String, binding: Binding<String>)]!
    
    init() {
        fields = [("Hours", $hours), ("Minutes", $minutes), ("Seconds", $seconds)]
    }
    
    var body: some View {
        VStack {
            Text("Countdown Duration")
            HStack {
                VStack(alignment: .leading) {
                    ForEach(0..<fields.count){ i in
                        Text(self.fields[i].label + ":")
                        .frame(maxHeight: 29)
                    }
                }
                
                VStack(alignment: .leading) {
                    ForEach(0..<fields.count){ i in
                        TextField(self.fields[i].label, text: self.fields[i].binding)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(maxWidth: 100)
                    }
                }
            }
        }
        .frame(maxWidth: 400, maxHeight: 400)
        .padding(.bottom)
    }
}

struct DurationSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        DurationSettingsView()
    }
}
