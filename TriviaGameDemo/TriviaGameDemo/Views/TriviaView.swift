//
//  TriviaView.swift
//  TriviaGameDemo
//
//  Created by Mehdi JAFARI ZADEH on 24/07/2023.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager : TriviaManager
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()
                
                Text("Congratulations, you completed the game!")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(Color(red: 0.98,
                              green: 0.93,
                              blue:0.847))
        } else {
            QuestionView()
                .environmentObject (triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject (TriviaManager())
    }
}
