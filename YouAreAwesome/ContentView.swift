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
       
        
    var body: some View {
        
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity, alignment: .center)
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
                
                messageNumber = Int.random(in: 0...messages.count-1)
                messageString = messages[messageNumber]
               
                imageName = "image\(Int.random(in: 0...9))"
            
        }  // Button
        .buttonStyle(.borderedProminent)
        
        .padding()
    
        }  // VStack
        
    }  // some View
}  // View

#Preview {
    ContentView()
}
