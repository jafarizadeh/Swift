//
//  Grid.swift
//  Instagram-app
//
//  Created by Mehdi on 31/07/2023.
//

import SwiftUI

struct Grid: View {
    var images: [String] = ["profile", "profile2", "profile3", "profile4", "profile5", "profile6", "profile7", "profile8"]
    
    var columnGrid: [GridItem] = [GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1)]
    
    var body: some View {
        LazyVGrid(columns: columnGrid, spacing: 1){
            ForEach((0...44), id: \.self) {
                Image(images[$0 % images.count])
                    .resizable()
                    .scaledToFill()
                    .frame(width: (UIScreen.main.bounds.width / 3) - 2, height: (UIScreen.main.bounds.width / 3) - 2)
                    .clipped()
            }
        }
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
