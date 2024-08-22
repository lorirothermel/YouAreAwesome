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
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                                
                messageString = (messageString == message1 ? message2 : message1)
                
                //TODO: Update the imageName variable
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
