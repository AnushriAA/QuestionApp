import SwiftUI

struct Question4: View {
    @State private var message = " "
    @State private var messageRight = "Yessss! I love this show so much. It has the cutest couples. No misunderstandings with random breakups for 'interesting' reasons. The female lead and male lead are hard-working and work towards their goals. They also tutor each other."
    var body: some View {
        ZStack{
            Color(Color(.orange))
                .ignoresSafeArea()
            VStack{
                Text("What's my favorite k/c drama?")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.912, saturation: 0.873, brightness: 0.941))
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .cornerRadius(12.0)
                
                Button("       🔘 Doctor Slump")
                {
                    message = "No! I love the whole story about doctors rising back up. It's pretty realistic. It's just way to long."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("🔘 Happiness") {
                    message = "No! Okay, this would have been my favorite dram. It's just really creepy. I get scared so easily! I can't watch this all the time. However, the plot is the best out of all the options. It's so good!"
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("                              🔘 When I fly Towards You") {
                    message = "Yessss! I love this show so much. It has the cutest couples. No misunderstandings with random breakups for 'interesting' reasons. The female lead and male lead are hard-working and work towards their goals. They also tutor each other."
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Button("                   🔘 Lighter & Princess") {
                    message = "Sadly, no! It use to be my favorite. It all about computer science romance. And guess what, the female lead is also really, really good at coding. And she enjoys it. Ahhhhhhh!"
                }
                .padding()
                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                
                Text("\(message)")
                
                if(messageRight == message)
                {
                    NavigationStack {
                        NavigationLink(destination: ContentView()) {
                            Text("Back to Home Page")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Question4()
}


