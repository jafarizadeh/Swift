//
//  PreferenceKeys.swift
//  DesignCodeiOS15
//
//  Created by Mehdi on 06/08/2023.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
