//
//  RadarView.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/18/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI
import Foundation
import AVKit
import AVFoundation

class RadarUIView: NSView {
    private let playerLayer = AVPlayerLayer()
    private var player: AVPlayer!

    override init(frame: CGRect) {
        super.init(frame: frame)

        if let filePath = Bundle.main.path(forResource: "radar", ofType: "mp4") {
            let localUrl = NSURL(fileURLWithPath: filePath)
            
            player = AVPlayer(url: localUrl as URL)
            player.actionAtItemEnd = .none
            player.play()
            
            loopVideo(videoPlayer: player)

            playerLayer.player = player
            if layer == nil{
                layer = CALayer()
            }
            layer?.addSublayer(playerLayer)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layout() {
        super.layout()
        playerLayer.frame = bounds
    }
    
    func loopVideo(videoPlayer: AVPlayer) {
        NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil, queue: nil) { notification in
            videoPlayer.seek(to: CMTimeMake(value: 95, timescale: 10))
            videoPlayer.play()
        }
    }
}
