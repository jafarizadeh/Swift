//
//  TitleRow.swift
//  ChatAppDemo
//
//  Created by Mehdi on 28/07/2023.
//

import SwiftUI

struct TitleRow: View {

    var image = Image("Hassan")
    var name = "Hassan Eftekh"

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
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
