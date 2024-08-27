//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lori Rothermel on 8/15/24.
//

import SwiftUI
import AVFAudio


struct ContentView: View {
    
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    @State private var lastSoundNumber = -1
    @State private var soundIsOn = true
    
    var body: some View {
        
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
             
            HStack {
                
                Text("Sound: \(soundIsOn ? "On" : "Off")")
                
                Toggle("", isOn: $soundIsOn)
                    .padding()
                    .labelsHidden()
                    .onChange(of: soundIsOn) { _, _ in
                        if audioPlayer != nil && audioPlayer.isPlaying {
                            audioPlayer.stop()
                        }  // if
                    }  // onChange
                    .tint(.black)
                
                Button("Show Message") {
                    let messages: [String] = [
                        "Phrase 0",
                        "Phrase 1",
                        "Phrase 2",
                        "Phrase 3",
                        "Phrase 4",
                        "Phrase 5",
                        "Phrase 6",
                        "Phrase 7",
                        "Phrase 8",
                        "Phrase 9"  ]
                    
                    
                    lastMessageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBounds: messages.count-1)
                    messageString = messages[lastMessageNumber]
                    
                    lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBounds: 9)
                    imageName = "image\(lastImageNumber)"
                    
                    lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBounds: 5)
                    
                    if soundIsOn {
                        playSound(soundName: "sound\(lastSoundNumber)")
                    }
                    
                    
                }  // Button
                .buttonStyle(.borderedProminent)
                .padding()
                
            }  // HStack
            
        }  // VStack
        
    }  // some View
    
    
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("❗️Could not read file named \(soundName)")
            return
        }  // guard let
        
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("ERROR: \(error.localizedDescription). Creating audioPlayer.")
        }  // do...catch
    }
    
    func nonRepeatingRandom(lastNumber: Int, upperBounds: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBounds)
        } while newNumber == lastNumber
        
        return newNumber
        
    }
    
    
}  // View

#Preview {
    ContentView()
}
