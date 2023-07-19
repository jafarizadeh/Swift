//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mehdi JAFARI ZADEH on 19/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .bottom, endPoint: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
