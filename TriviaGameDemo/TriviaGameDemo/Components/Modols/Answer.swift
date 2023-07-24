//
//  Answer.swift
//  TriviaGameDemo
//
//  Created by Mehdi JAFARI ZADEH on 24/07/2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
