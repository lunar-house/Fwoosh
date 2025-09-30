//
//  FwooshNode.swift
//  Fwoosh
//
//  Created by Hugo Jeffreys on 23/09/2025.
//

import AudioKit
import Foundation

struct FwooshNode {
    let engine: AudioEngine
    let mixer: Mixer
    init(engine: AudioEngine, mixer: Mixer) {
        self.engine = engine
        self.mixer = mixer
        self.engine.output = mixer
    }
    func play() {

    }

}
