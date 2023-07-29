//
//  ContentView.swift
//  Salle De Chat
//
//  Created by Mehdi on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    var body: some View {
            ZStack {
                //
                VStack {
                    TitleRow()
                        .background(Color("Peach"))
                        .padding(.top, 40)
                    //                Spacer()
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("background"))
                            .frame(maxWidth: .infinity, minHeight: 700)
                            .ignoresSafeArea(.all)
                        
                    }
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .shadow(color: .brown, radius: 10)
                    
                }
                
                
                .background(Color("Peach"))
                VStack {
                    ZStack {
                        
                        ForEach(messagesManager.messages, id: \.id) { message in
                            MessageBubble(message: message)
                            
                        }
                        
                        
                    }
                    
                    
                    MessageField()
                        .environmentObject(messagesManager)
                        .padding(.bottom, 30)
                        .padding(.top, 20)
                        .shadow(color: .gray, radius: 2)
                    
                }
                
                .padding()
                
            } //ZStack
            
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
