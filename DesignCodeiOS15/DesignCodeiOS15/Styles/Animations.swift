//
//  Animations.swift
//  DesignCodeiOS15
//
//  Created by Mehdi on 07/08/2023.
//

import SwiftUI

extension Animation {
    static let openCard = Animation.spring(response: 0.5, dampingFraction: 0.7)
    static let closeCard = Animation.spring(response: 0.6, dampingFraction: 0.9)
}
