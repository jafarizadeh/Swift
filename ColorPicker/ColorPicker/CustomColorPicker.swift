//
//  CustomColorPicker.swift
//  ColorPicker
//
//  Created by Mehdi JAFARI ZADEH on 14/07/2023.
//

import SwiftUI

struct CustomColorPicker: View {
    @Binding var selectedColor: Color
    private let colors : [Color] = [.red, .yellow, .orange, .purple, .blue, .indigo, .green, .mint, .black, .white]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(colors, id: \.self){color in
                    Circle()
                        .foregroundColor(color)
                        .frame(width: 45, height: 45)
                        .opacity(color == selectedColor ? 0.5 : 1.0)
                        .scaleEffect (color == selectedColor ? 1.1 : 1.0)
                        .onTapGesture{
                            selectedColor = color
                        }
                }
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(20)
            .padding(.horizontal)
        }
    }
}

struct CustomColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomColorPicker(selectedColor: .constant(.blue))
    }
}
