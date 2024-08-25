//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lori Rothermel on 8/15/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
        
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
                
                /*
                    Generate a random messageNumber to use as an index.
                    If messageNumber == lastMessageNumber -
                        Keep generating a new random messageNumber
                        until you get a messageNumber != lastMessageNumber.
                    Set messageString to messages[messageNumber].
                    Update the lastMessageNumber with messageNumber.
                                 
                 */
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                
                while messageNumber == lastMessageNumber {
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                               
                messageString = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber = Int.random(in: 0...9)
                
                while imageNumber == lastImageNumber {
                    imageNumber = Int.random(in: 0...9)
                }
                
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
        }  // Button
            
        .buttonStyle(.borderedProminent)
        .padding()
    
        }  // VStack
        
    }  // some View
}  // View

#Preview {
    ContentView()
}
