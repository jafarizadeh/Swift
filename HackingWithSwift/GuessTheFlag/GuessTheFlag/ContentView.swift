//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mehdi JAFARI ZADEH on 19/07/2023.
//

import SwiftUI

struct ContentView: View {
//    @State private var gameIsOver = false
    @State private var scoreIsZero = false
    @State private var wrongAnswer = false
    @State private var score = 0;
    @State private var scoreTitle = ""
    @State private var countries =
    ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var gameDuration = 5
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        
        
        
        ZStack{
            
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Spacer()
                Text("Guess the Flag")
                Text("Time left: \(gameDuration)")
                    .font(.largeTitle.bold())
                    .foregroundColor(.black)
                
                VStack(spacing: 15){
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach (0..<3){ number in
                        Button{
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundColor(.black)
                    .font(.subheadline.bold())
                Spacer()
            }
            .padding()
            .padding()
            
            
        }
        
        .onReceive(timer) { _ in
                    if gameDuration > 0 {
                        gameDuration -= 1
                    }
                }
        .alert(scoreTitle, isPresented: $wrongAnswer){
            if(scoreTitle == "Game Over"){
                VStack {
                    Button("Restart") {
//                        gameIsOver = false
                        score = 0
                        countries.shuffle()
                        correctAnswer = Int.random(in: 0...2)
                    }
                }
            }
            else if(scoreTitle == "Time Zero !!!!"){
                VStack {
                    Button("Restart") {
//                        gameIsOver = false
                        score = 0
                        countries.shuffle()
                        correctAnswer = Int.random(in: 0...2)
                    }
                }
        }else{
                Button("Continue", action: askQuestion)
            }
            
        } message: {
            if(scoreTitle == "Time Zero !!!!"){
                Text("Time Zero !!!!")
                Text("Your score is \(score)")
            }else{
                
                Text("Your score is \(score)")
            }
        }
        
        
        
        
    }
    
    func flagTapped (_ number: Int){
        if (number == correctAnswer && gameDuration > 0) {
            score = score + 1
            askQuestion()
        } else {
            scoreTitle = "Wrong"
            if (score == 0) {
                scoreIsZero = true
                wrongAnswer = true
//                gameIsOver = true
                scoreTitle = "Game Over"
                
                
            }
            else if(gameDuration <= 0){
//                gameIsOver = true
                scoreTitle = "Time Zero !!!!"
            } else {
                score -= 1
                wrongAnswer = true
            }
        }
    }
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        wrongAnswer = false
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
