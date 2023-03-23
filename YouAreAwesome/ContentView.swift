//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lori Rothermel on 3/23/23.
//

import SwiftUI
import AVFAudio


struct ContentView: View {
    @State private var messageString: String = ""
    @State private var lastMessageNumber = -1
    
    @State private var imageName: String = ""
    @State private var lastImageNumber = -1
    
    @State private var audioPlayer: AVAudioPlayer!
    @State private var lastSoundNumber = -1
    
    @State private var soundIsOn = false
    
    
    var body: some View {
        
          
            VStack {
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .animation(.easeIn(duration: 0.4), value: messageString)

                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                    .animation(.default, value: messageString)
                Spacer()
                
                
                HStack {
                    Text("Sound On: ")
                    Toggle("", isOn: $soundIsOn)
                       .labelsHidden()
                       .onChange(of: soundIsOn) { _ in
                           if audioPlayer != nil && audioPlayer.isPlaying {
                               audioPlayer.stop()
                           }
                       }  // Toggle
                                       
                    Button {
                        let messages = ["You Are Awesome!",
                                        "You Are Great!",
                                        "Fabulous? That's You!",
                                        "You Are a Code Monster!",
                                        "You Make Me Smile!",
                                        "You Are Fantastic!"]
                        
                        
                        
                        lastMessageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBounds: messages.count - 1)
                        messageString = messages[lastMessageNumber]
                        
                        lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBounds: 9)
                        imageName = "image\(lastImageNumber)"
                        
                        lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBounds: 5)
                        
                        if soundIsOn {
                            playSound(soundName: "sound\(lastSoundNumber)")
                        }
                        
                    } label: {
                        Text("Show Message")
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.horizontal, 30)
                                    
                }  // HStack
                .tint(.accentColor)
                
            }  // VStack
            .padding()

        
    }  // some View
    
    
    
    func playSound(soundName: String) {
        
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("🤬 Could not read file name \(soundName))")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("🤬 ERROR: \(error.localizedDescription) creating audioPlayer")
        }
    }  // End of playSound func
    
    
    func nonRepeatingRandom(lastNumber: Int, upperBounds: Int) -> Int {
        var newNumber: Int
        
        repeat {
            newNumber = Int.random(in: 0...upperBounds)
        } while newNumber == lastNumber
               
        return newNumber
         
    }  // End of nonRepeatRandom
    
    
    
}  // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
