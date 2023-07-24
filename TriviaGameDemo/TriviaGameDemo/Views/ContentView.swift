//
//  ContentView.swift
//  TriviaGameDemo
//
//  Created by Mehdi JAFARI ZADEH on 24/07/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20){
                    Text("Trivia Game")
                        .lilacTitle()
                    
                    Text("Are you ready to test out your trivia skills?")
                        .foregroundColor(Color("AccentColor"))
                }
                
                NavigationLink {
                    TriviaView()
                        .environmentObject (triviaManager)
                } label: {
                    PrimaryButton(text: "Let's go!")
                }
                
                
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.98,
                            green: 0.93,
                          blue:0.847))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
