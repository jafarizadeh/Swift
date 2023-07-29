//
//  MessageBubble.swift
//  Salle De Chat
//
//  Created by Mehdi on 28/07/2023.
//

import SwiftUI

struct MessageBubble: View {
    @StateObject var messagesManager = MessagesManager()

    var message: Message
    var colorsArray = ["Color1", "Color2", "Color3", "Color4", "Color5"]

    @State private var currentColor: String = "Color1"
    @State private var textPosition: CGPoint = .zero
    @State private var showTime = false
    @State private var deleteMessageID: String? = nil

    let textWidth: CGFloat = 200
    let textHeight: CGFloat = 150

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    ZStack {
                        Text(message.text)
                            .frame(width: textWidth, height: textHeight - 30)
                        .padding()
                    }
                    .shadow(color: .white, radius: 6)
                        
                    
                    
                    HStack {
                        if showTime {
                            Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                                .frame(width: 100, alignment: .center)
                                .background(Color(.white).opacity(0.5))
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                        }
                        
                        if let id = deleteMessageID {
                            Button(action: {
                                messagesManager.deleteMessage(id: id)
                            }) {
                                Image(systemName: "clear")
                                    .foregroundColor(.red)
                                    .padding(7)
                                    .background(Color(.white).opacity(0.5))
                                    .clipShape(Circle())
                                    .shadow(radius: 3)
                            }
                            .padding()
                        }
                    }
                }
                    .background(Color(currentColor))
                    .cornerRadius(30)
                    .position(textPosition)
                }
                
                .onAppear {
                    currentColor = colorsArray.randomElement() ?? "Color1"
                    let randomX = CGFloat.random(in: textWidth / 2..<geometry.size.width - textWidth / 2)
                    let randomY = CGFloat.random(in: (textHeight / 2) + 140..<geometry.size.height - textHeight / 2)
                    textPosition = CGPoint(x: randomX, y: randomY)
                }
                .shadow(color: .white, radius: 3)
                .onTapGesture {
                    showTime.toggle()
                    deleteMessageID = message.id
                }
            
        }
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "12345", text: "hello kjg  kugyufgiuy iughiug lkhkug 99", timestamp: Date()))
    }
}
