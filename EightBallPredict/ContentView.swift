//
//  ContentView.swift
//  EightBallPredict
//
//  Created by Jedda Tuuta on 20/7/2025.
//

import SwiftUI
struct ContentView: View {
    @State private var prediction = ""
    let choicesArray = ["It is certain",
                        "It is decidedly so",
                        "Without a doubt",
                        "Yes, definitely",
                        "You may rely on it",
                        "As I see it, yes",
                        "Most likely",
                        "Outlook good",
                        "Yes",
                        "Signs point to yes",
                        "Reply hazy try again",
                        "Ask again later",
                        "Better not tell you now",
                        "Cannot predict now",
                        "Concentrate and ask again",
                        "Don't count on it",
                        "My reply is no",
                        "My sources say no",
                        "Outlook not so good",
                        "Very doubtful"
]
    var body: some View {
        
        
        ZStack{
            
            VStack {
                
                Text("My magic 8 ball")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                
                Spacer()
                
                ZStack{
                    
                    
                    
                    Image("background-wood-grain")
                        .resizable()
                        .ignoresSafeArea()
                    
                    Image("predict-ball-image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 350)
                    
                    Circle()
                        .frame(width: 140, height: 140)
                        .foregroundStyle(.indigo)
                        .offset(y: -20)
                    
                    Text(prediction)
                        .font(.largeTitle)
                        .minimumScaleFactor(0.4)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 100, height: 100)
                        .offset(y: -20)
                        .animation(.default, value: prediction)
                        
                    
                }
                
            
                Spacer()
                    
                Button("Predict") {
                    prediction = choicesArray.randomElement() ?? "empty array"
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
                .font(.title2)
                
             
            }
            .padding()
        }
    }

            
        }
        
        
        
#Preview {
    ContentView()
}
