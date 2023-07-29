//
//  clearData.swift
//  Salle De Chat
//
//  Created by Mehdi on 29/07/2023.
//

import SwiftUI

struct clearData: View {
    @StateObject var messagesManager = MessagesManager()

    var body: some View {
        Button() {
            messagesManager.reset()
        } label: {
            Image(systemName: "clear")
                .foregroundColor(.red)
                .padding(10)
                .background(Color("Peach"))
                .cornerRadius(50)
        }
    }
}

struct clearData_Previews: PreviewProvider {
    static var previews: some View {
        clearData()
    }
}
