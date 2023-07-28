//
//  ContentView.swift
//  ChatAppDemo
//
//  Created by Mehdi on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hello you", "asdfea", "adfe", "", "asdf"]
    var body: some View {
        VStack {
            TitleRow()
            
            ScrollView {
                ForEach(messageArray, id: \.self) { text in
                    MessageBubble(message: Message(id: "12345", text: text, received: true, timestamp: Date()))
                }
            }
            .padding(.top, 10)
            .background(.white)
            .cornerRadius(30, corners: [.topLeft, .topRight])
        }
        .background(Color("Peach"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
