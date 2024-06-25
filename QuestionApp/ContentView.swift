//
//  ContentView.swift
//  QuestionApp
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                Text("QUESTIONS  ABOUT  ME")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.912, saturation: 0.873, brightness: 0.941))
                    .padding()
                    .background(Color(.black))
                    .cornerRadius(12.0)
    
                NavigationStack {
                    NavigationLink(destination: Question1()) {
                        Text("Go to 1st Question")
                            .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                    }
                }
                
            }
        }
    }

#Preview {
    ContentView()
}
