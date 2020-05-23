//
//  ViewModifiers.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/19/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI

struct GrayButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(PlainButtonStyle())
            .padding()
            .frame(minWidth: 100)
            .background(Color.gray)
            .cornerRadius(5)
            .font(.system(size: 15))
    }
}

struct BlueButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(PlainButtonStyle())
            .padding()
            .frame(minWidth: 100)
            .background(Color(red:100/255, green:161/255, blue:252/255))
            .cornerRadius(5)
            .font(.system(size: 15))
    }
}

struct BlackButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(PlainButtonStyle())
            .padding()
            .frame(minWidth: 100)
            .background(Color.black)
            .cornerRadius(5)
            .font(.system(size: 15))
    }
}
