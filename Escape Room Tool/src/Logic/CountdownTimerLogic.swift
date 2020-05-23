//
//  TimerLogic.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/17/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

public class CountdownTimer: ObservableObject {
    @Published var timerNowDate: Date = Date()
    var timerEndDate: Date
    
    init() {
        let timerDuration = CountdownTimer.getCountdownDuration()
        
        timerEndDate = Date(timeIntervalSinceNow: timerDuration)
    }
    
    var setTimer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.timerNowDate = Date()
        }
    }
    
    class func getCountdownDuration() -> Double {
        let hourDuration = 1
        let minuteDuration = 30
        let secondsDuration = 30
        
        return Double(hourDuration * 3600 + minuteDuration * 60 + secondsDuration)
    }
    
    func getCountDownString() -> String {
        let calendar = Calendar(identifier: .gregorian)
        let components = calendar
            .dateComponents([.day, .hour, .minute, .second]
                ,from: timerNowDate,
                 to: timerEndDate)
        return String(format: "%02dh:%02dm:%02ds",
                      components.hour ?? 00,
                      components.minute ?? 00,
                      components.second ?? 00)
    }
}
