//
//  Question1.swift
//  QuestionApp
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI
struct Question1: View {
    @State private var message = " "
    @State private var messageRight = "Right! I was born in Houston, and I loved living there."
    var body: some View {
        ZStack{
            Color(Color(.orange))
                .ignoresSafeArea()
            VStack{
                
                Text("Where was I born?")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.912, saturation: 0.873, brightness: 0.941))
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12.0)
                
                Button("🔘 Austin")
                {
                    message = "Wrong! I live there now."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("     🔘 Houston") {
                    message = "Right! I was born in Houston, and I loved living there."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("🔘 Dallas") {
                    message = "Wrong! Although, I wish I lived there. It's one of the few places in TX that actually experiences snow."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("               🔘 San Antonio") {
                    message = "Nooooooooo!"
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                
                Text("\(message)")
                
                if(messageRight == message)
                {
                    NavigationStack {
                        NavigationLink(destination: Question2()) {
                            Text("Next Question")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Question1()
}
