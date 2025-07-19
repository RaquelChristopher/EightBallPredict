//
//  ContentView.swift
//  EightBallPredict
//
//  Created by Jedda Tuuta on 20/7/2025.
//

import SwiftUI
struct ContentView: View {
    @State private var prediction = ""
    var body: some View {
        
        
        VStack {
            
            Spacer()
            
            Image("predict-ball-image")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350)
                
            Text(prediction)
                .font(.largeTitle)
                .frame(height: 120)
            
            Spacer()
                
            Button("Predict") {
                prediction = "Awesomness is on it's way!"
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.indigo)
            .font(.title2)
            
         
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
