//
//  FwooshApp.swift
//  Fwoosh
//
//  Created by Andrzej Prochyra on 14/08/2025.
//


import SwiftUI
import AudioKit
import SoundpipeAudioKit

@main
struct FwooshApp: App {
    
    var fwooshNode: FwooshNode

    init() {
        let engine = AudioEngine()
        let mixer = Mixer()
        let noise = BrownianNoise()
        noise.amplitude = 1.0

        fwooshNode = FwooshNode(engine: engine, mixer: mixer)
        fwooshNode.add(noise: noise)
        
    }
    
    var body: some Scene {
        WindowGroup {
            FwooshView(fwooshNode: fwooshNode)
        }
    }
}
