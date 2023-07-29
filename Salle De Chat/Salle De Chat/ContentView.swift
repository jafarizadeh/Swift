//
//  ContentView.swift
//  Salle De Chat
//
//  Created by Mehdi on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 80, maxHeight: 80)
                        .ignoresSafeArea(.all)
                        .shadow(color: .gray, radius: 60)
                    
                        TitleRow()
                            .background(Color("Peach"))
                }

                Spacer()
                
            }
            
            .background(Color("background"))
            
            MessageBubble(message: Message(id: "12345", text: "hello kjg  kugyufgiuy iughiug lkhkug 99", timestamp: Date()))
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
