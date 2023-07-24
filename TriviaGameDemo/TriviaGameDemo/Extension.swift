//
//  Extension.swift
//  TriviaGameDemo
//
//  Created by Mehdi JAFARI ZADEH on 24/07/2023.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
