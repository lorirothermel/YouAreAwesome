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
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity, alignment: .center)
                .border(.orange, width: 1)
                .padding()
            
            HStack {
            
                Button("Awesome") {
                    // Action performed when button is pressed.
                    messageString = "You Are Awesome!"
                    
                }  // Button
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    // Action performed when button is pressed.
                    messageString = "You Are Great!"
                    
                }  // Button
                .buttonStyle(.borderedProminent)
                                
                .buttonStyle(.borderedProminent)
                
                
            }  // HStack
            
            .border(.black, width: 5)
   
            
        }  // VStack
           
                             
            
        
        
        
    }  // some View
}  // View

#Preview {
    ContentView()
}
