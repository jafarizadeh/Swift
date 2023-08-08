//
//  Suggestion.swift
//  DesignCodeiOS15
//
//  Created by Mehdi on 08/08/2023.
//

import SwiftUI

struct Suggestion: Identifiable {
    let id = UUID()
    var text: String
}

var suggestions = [
    Suggestion(text: "SwiftUI"),
    Suggestion(text: "React"),
    Suggestion(text: "Design")
]

