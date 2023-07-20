//
//  ContentView.swift
//  BetterRest
//
//  Created by Mehdi JAFARI ZADEH on 20/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) H", value: $sleepAmount, in : 4...12, step: 0.25)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
