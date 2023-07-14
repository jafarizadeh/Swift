//
//  ContentView.swift
//  ColorPicker
//
//  Created by Mehdi JAFARI ZADEH on 14/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor: Color = .red
    
    var body: some View {
        VStack {
            CustomColorPicker(selectedColor: $selectedColor)
            Spacer()
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(selectedColor)
            Text("\(selectedColor.description)")
                .font(.system(size: 40))
            Spacer()
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
