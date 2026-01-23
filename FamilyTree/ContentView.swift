//
//  ContentView.swift
//  FamilyTree
//
//  Created by Adebayode Adegoke on 21/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Spacer()
            Text("A family tree")
            
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.blue)
            
            Text("A family tree is a diagram that shows the \nrelationships of people, typically \narranged by generation.")
            
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundStyle(.blue)
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 800, height: 400)
//                .clipShape(.buttonBorder)
            Text(message)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
                .fontWidth(.standard)
            
            Spacer()
        }
       
        
            Button("Our Family Tree") {
                
                let message1 = "I am the Father"
                let message2 = "I am the Mother"
                let message3 = "We are the Children"
                
                if message == message1{
                    message = message2
                    imageName = "Mother"
                } else if message == message2 {
                    message = message3
                    imageName = "Children"
                } else {
                    message = message1
                    imageName = "Father"
                }
                
        }
        
        .foregroundStyle(.white)
        .tint(.blue)
        .buttonBorderShape(.roundedRectangle)
        .buttonStyle(.borderedProminent)
//        .buttonSizing(.flexible)
        
        .padding()
    }
}

#Preview {
    ContentView()
}
