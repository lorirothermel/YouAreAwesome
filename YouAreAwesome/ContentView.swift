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
                       
            Button("Show Message") {
                
                let messages: [String] = [
                    "Random Phrase 0",
                    "Random Phrase 1",
                    "Random Phrase 2",
                    "Random Phrase 3",
                    "Random Phrase 4",
                    "Random Phrase 5",
                    "Random Phrase 6",
                    "Random Phrase 7",
                    "Random Phrase 8",
                    "Random Phrase 9"  ]
                               
                
                lastMessageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBounds: messages.count-1)
                messageString = messages[lastMessageNumber]
                
                lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBounds: 9)
                imageName = "image\(lastImageNumber)"
                               
                lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBounds: 5)
                playSound(soundName: "sound\(lastSoundNumber)")
                
        }  // Button
        .buttonStyle(.borderedProminent)
        .padding()
    
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
