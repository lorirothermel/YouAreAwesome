//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lori Rothermel on 8/15/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "Namaste"
    
    
    var body: some View {
        
        VStack {
                   
            Spacer()
            
//            Image(systemName: "cloud.sun.rain.fill")
//                .resizable()
//                .scaledToFit()
//                .symbolRenderingMode(.multicolor)
//                .padding()
//                .background(Color(hue: 0.521, saturation: 0.299, brightness: 0.958))
//                .cornerRadius(30)
//                .shadow(color: .teal, radius: 30, x: 20, y: 20)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 30)
//                        .stroke(.teal, lineWidth: 1)
//                )
//                .padding()
                
             
            Image(systemName: "speaker.wave.2", variableValue: 0.55)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.521, saturation: 0.299, brightness: 0.958))
                .cornerRadius(30)
                .shadow(color: .teal, radius: 30, x: 20, y: 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 1)
                )
                .padding()
            
            
            
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
                                
            }  // HStack
            .padding()
            
        }  // VStack
        
    }  // some View
}  // View

#Preview {
    ContentView()
}
