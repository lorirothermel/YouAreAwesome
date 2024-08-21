//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lori Rothermel on 8/15/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    
    
    var body: some View {
        
        VStack {
            
            Group {
                Text("I'm am a Text View #1")
                Text("I'm am a Text View #2")
                Text("I'm am a Text View #3")
                Text("I'm am a Text View #4")
                Text("I'm am a Text View #5")
                Text("I'm am a Text View #6")
                Text("I'm am a Text View #7")
                Text("I'm am a Text View #8")
                Text("I'm am a Text View #9")
                Text("I'm am a Text View #10")
                Text("I'm am a Text View #11")
                Text("I'm am a Text View #12")
                Text("I'm am a Text View #13")
                Text("I'm am a Text View #14")
                Text("I'm am a Text View #15")
                Text("I'm am a Text View #16")
                Text("I'm am a Text View #17")
                Text("I'm am a Text View #18")
                Text("I'm am a Text View #19")
                Text("I'm am a Text View #20")
                   
            }  // Group
            .font(.title)
            .fontWeight(.heavy)
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity, alignment: .center)
            //               .border(.orange, width: 1)
                .padding()
            
            Spacer()
            
            HStack {
                
                Button("Awesome") {
                    // Action performed when button is pressed.
                    messageString = "You Are Awesome!"
                    
                }  // Button
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("Great") {
                    // Action performed when button is pressed.
                    messageString = "You Are Great!"
                    
                }  // Button
                .buttonStyle(.borderedProminent)
                
                .buttonStyle(.borderedProminent)
                
                
            }  // HStack
            
            //            .border(.black, width: 5)
            .padding()
            
        }  // VStack
        
    }  // some View
}  // View

#Preview {
    ContentView()
}
