//
//  ContentView.swift
//  Fwoosh
//
//  Created by Andrzej Prochyra on 14/08/2025.
//

import SwiftUI
import AudioKit
import SoundpipeAudioKit

struct FwooshView: View {
    @ObservedObject var fwooshNode: FwooshNode
    
    init (fwooshNode: FwooshNode) {
        self.fwooshNode = fwooshNode
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Button(
                "Start",
                action: {
                    fwooshNode.play()
                })
        }
        .padding()
    }
}


