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
                .clipShape(.buttonBorder)
            
            Text(message)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
                .fontWidth(.standard)
            
            Spacer()
        }
       
        HStack {
            Button("Father") {
                message = "I am the Father"
                imageName = "Father"
            }
            Button("Mother") {
                message = "I am the Mother"
                imageName = "Mother"
            }
            Button("Children") {
                message = "We are the Children"
                imageName = "Children"
            }
        }
        
        .foregroundStyle(.white)
        .tint(.blue)
        .buttonBorderShape(.roundedRectangle)
        .buttonStyle(.borderedProminent)
        .buttonSizing(.flexible)
        
        .padding()
    }
}

#Preview {
    ContentView()
}
