//
//  Question3.swift
//  QuestionApp
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI

struct Question3: View {
    @State private var message = " "
    @State private var messageRight = "Yes!! I love it soooo much! I've been dancing to Bollywood since 4. Now I also do Kathak. I'm trying to get into hip-hop. It's been my style lately."
    var body: some View {
        ZStack{
            Color(Color(.orange))
                .ignoresSafeArea()
            VStack{
                Text("What's my favorite activity to do        outside of coding?")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.912, saturation: 0.873, brightness: 0.941))
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12.0)
                
                Button("🔘 Singing")
                {
                    message = "No! I used to sing for my school choir. I learned I didn't enjoy. Fun Fact: I sang at an NBA game."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("  🔘 Painting") {
                    message = "No. I used to take classes, but it wasn't something I'd do in my free time. I was better at drawing than painting."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("  🔘 Drawing") {
                    message = "No!!! If you clicked 'Paiting' before, you were tricked. I am sort of okay at it, but its more of a chore to me."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("  🔘 Dancing") {
                    message = "Yes!! I love it soooo much! I've been dancing to Bollywood since 4. Now I also do Kathak. I'm trying to get into hip-hop. It's been my style lately."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Text("\(message)")
                
                if(messageRight == message)
                {
                    NavigationStack {
                        NavigationLink(destination: Question4()) {
                            Text("Next Question")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Question3()
}

