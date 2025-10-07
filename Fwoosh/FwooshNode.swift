//
//  FwooshNode.swift
//  Fwoosh
//
//  Created by Hugo Jeffreys on 23/09/2025.
//

import AVFAudio
import AudioKit
import Foundation

struct FwooshNode {
    var noise: Node = Silence()
    let engine: AudioEngine
    let mixer: Mixer

    init(engine: AudioEngine, mixer: Mixer) {
        self.engine = engine
        self.mixer = mixer
        self.engine.output = self.mixer
    }

    mutating func add(noise: Node) {
        self.noise = noise
        self.mixer.addInput(noise)
    }

    func play() {
        noise.start()
    }

    mutating func stop() {
        noise.stop()
    }

}

class Silence: Node {
    var connections: [any AudioKit.Node] { [] }

    var avAudioNode: AVAudioNode

    public init() {
        self.avAudioNode = AVAudioNode()
    }
}
