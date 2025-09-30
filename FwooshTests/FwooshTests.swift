//
//  FwooshTests.swift
//  FwooshTests
//
//  Created by Andrzej Prochyra on 14/08/2025.
//

import AudioKit
import Testing

@testable import Fwoosh

struct FwooshTests {

    @Test func connectingEngineToMixer() {
        // var whitenoise = WhiteNoise()
        // Instantiate Fwoosh Noise Class
        let engine = AudioEngine()
        let mixer = Mixer()

        let fwooshNode = FwooshNode(engine: engine, mixer: mixer)
        // FwooshNoise.play()
        fwooshNode.play()
        // Noise is playing
        // Does fwoosh node have an engine?
        // Does engine have a mixer?
        // Does mixer have a noise?
        // engine.ouptut.isStarted
        #expect(engine.output != nil)

        //        #expect(engine.output?.isStarted == true)

    }

}
