//
//  Question2.swift
//  QuestionApp
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI

struct Question2: View {
    @State private var message = " "
    @State private var messageRight = "Yes! I love his latest album: Limbo. All his songs are so good. Plus, he's from the same city as me.😜"
    var body: some View {
        ZStack{
            Color(Color(.orange))
                .ignoresSafeArea()
            VStack{
                Text("Who is my faovorte artist?")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.912, saturation: 0.873, brightness: 0.941))
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12.0)
                
                Button("🔘 Keshi")
                {
                    message = "Yes! I love his latest album: Limbo. All his songs are so good. Plus, he's from the same city as me.😜"
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("               🔘 BLACKPINK") {
                    message = "No. I used to be a big fan. Not so much into k-pop anymore."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("                   🔘 Wave to Earth") {
                    message = "No. Love Wave, but their songs are too relaxing. They make me want to fall asleep."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("                   🔘 Daniel Caesar") {
                    message = "Not yet! I recently discovered his music, and I've been liking it a lot."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Text("\(message)")
                
                if(messageRight == message)
                {
                    NavigationStack {
                        NavigationLink(destination: Question3()) {
                            Text("Next Question")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Question2()
}

