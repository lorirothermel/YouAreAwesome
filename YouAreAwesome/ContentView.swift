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
                                "Image Number -> 0",
                                "Image Number -> 1",
                                "Image Number -> 2",
                                "Image Number -> 3",
                                "Image Number -> 4",
                                "Image Number -> 5",
                                "Image Number -> 6",
                                "Image Number -> 7",
                                "Image Number -> 8",
                                "Image Number -> 9"  ]

                messageString = messages[messageNumber]
                messageNumber += 1
                                 
                if messageNumber == messages.count {
                    messageNumber = 0
                }  // If Statement
                
                imageName = "image\(imageNumber)"
                imageNumber = imageNumber + 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
            }  // Button
            .buttonStyle(.borderedProminent)
 
            .padding()
            
        }  // VStack
        
    }  // some View
}  // View

#Preview {
    ContentView()
}
