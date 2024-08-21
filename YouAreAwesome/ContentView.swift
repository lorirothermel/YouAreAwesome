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
                  
        GeometryReader { geo in
            
            VStack {
                               
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
                        
                    Divider()
                        .background(.red)
                        .padding()
                        .frame(width: 350.0)
                        
                    Rectangle()
                        .fill(.indigo)
                        .frame(width: geo.size.width * (2/3), height: 3)
                    
                    
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
            
        }  // GeoReader
            

        
  
        
    }  // some View
}  // View

#Preview {
    ContentView()
}
