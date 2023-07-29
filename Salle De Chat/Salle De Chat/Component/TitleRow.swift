//
//  TitleRow.swift
//  Salle De Chat
//
//  Created by Mehdi on 28/07/2023.
//


import SwiftUI

struct TitleRow: View {
    @StateObject var messagesManager = MessagesManager()


    var image = Image("Icon")
    var name = "3 shotguns"

    var body: some View {
        HStack(spacing: 20) {
            image
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .cornerRadius(50)
                
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title)
                    .bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button() {
                messagesManager.reset()
            } label: {
                Image(systemName: "clear")
                    .foregroundColor(.gray)
                    .padding(10)
                    .background(.white)
                    .clipShape(Circle())
                    .shadow(radius: 3)
            }
            
            
        }
        .padding(20)
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
