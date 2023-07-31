//
//  Labels.swift
//  Instagram-app
//
//  Created by Mehdi on 31/07/2023.
//

import SwiftUI

struct Labels: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 8.0) {
                Label(text: "Designe")
                Label(text: "Code")
                Label(text: "UI")
                Label(text: "Dog")
                Label(text: "travel")
                Label(text: "food")
            }
            .padding(.horizontal, 16)
            .frame(width: .infinity, height: 38)
        }
    }
}

struct Labels_Previews: PreviewProvider {
    static var previews: some View {
        Labels()
    }
}
