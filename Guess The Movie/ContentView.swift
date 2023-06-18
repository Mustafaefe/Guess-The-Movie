//
//  ContentView.swift
//  Guess The Movie
//
//  Created by Mustafa Efe on 19.06.2023.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    let synthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        VStack {
            Text("Guess the movies")
                .fontWeight(.bold)
                .font(.title2)
            Text("Butonların üzerindeki ikonlardan hangi film olduğunu bulabilir misin?")
                .padding()
                .font(.body)
            
            Button {
                speak(text: "Çiçek Taksi")
            } label: {
                Text("💐🚕")
                    .padding()
            }
            .background(.yellow)
            .cornerRadius(10)
            
            Button {
                speak(text: "Babam ve Oğlum")
            } label: {
                Text("👨🏻‍🦳 & 👨‍🦱")
                    .padding()
            }
            .background(.green)
            .cornerRadius(10)
            
            Button {
                speak(text: "Kardeş Payı")
            } label: {
                Text("👨‍🦱½👨‍🦱")
                    .padding()
            }
            .background(.purple)
            .cornerRadius(10)
        }
        .padding()
    }
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "tr-TR")
        synthesizer.speak(utterance)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
