//
//  CountdownView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/18/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct CountdownView: View {
    @EnvironmentObject var countdownTimer: CountdownTimer
    
    var body: some View {
        VStack(alignment: .center) {
            Text("PIRATES ARRIVING IN:")
                .font(.system(size:50))
                .minimumScaleFactor(0.01)
                .foregroundColor(Color.red)
                .padding()
            Text(countdownTimer.getCountDownString())
                .font(.system(size:100))
                .minimumScaleFactor(0.01)
                .lineSpacing(100)
                .foregroundColor(Color.red)
                .padding()
                .onAppear(perform: {
                    let _ = self.countdownTimer.setTimer
                })
        }
        .background(Color.black)
    }
}

struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountdownView().environmentObject(CountdownTimer())
    }
}
