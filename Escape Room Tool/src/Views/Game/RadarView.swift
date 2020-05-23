//
//  RadarView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/18/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI
import AVKit
import AVFoundation

struct RadarView: NSViewRepresentable {
    typealias NSViewType = RadarUIView
    
    func updateNSView(_ nsView: RadarUIView, context: NSViewRepresentableContext<RadarView>) {
    }

    func makeNSView(context: Context) -> RadarUIView {
        return RadarUIView(frame: .zero)
    }
}
