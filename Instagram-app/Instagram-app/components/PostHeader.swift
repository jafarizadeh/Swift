//
//  PostHeader.swift
//  Instagram-app
//
//  Created by Mehdi on 31/07/2023.
//

import SwiftUI

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack {
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("Mehdi")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostHeader()
    }
}
