//
//  ViewExtensions.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

extension View {
    func grayButtonStyle() -> some View {
        ModifiedContent(content: self, modifier: GrayButtonStyle())
    }
    
    func blueButtonStyle() -> some View {
        ModifiedContent(content: self, modifier: BlueButtonStyle())
    }
    
    func blackButtonStyle() -> some View {
        ModifiedContent(content: self, modifier: BlackButtonStyle())
    }
}
