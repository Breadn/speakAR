//
//  MusicControlsButton.swift
//  Clean SpeakAR Code
//
//  Created by Daniel Jung on 1/17/21.
//

import SwiftUI

struct MusicControlsButton: View {
    @Binding var isMusicControls: Bool
    
    var body: some View {
        
            ZStack {
                Color.black.opacity(0.25)
                
                Button(action: {
                    withAnimation {
                        isMusicControls.toggle()
                    }
                    print("DEBUG: MusicControlsButton toggled")
                }) {
                    Image(systemName: "hifispeaker.fill")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .buttonStyle(PlainButtonStyle())
                }
            }
            .frame(width: 75, height: 75)
            .cornerRadius(8)
        }
    }
