//
//  iDineApp.swift
//  iDine
//
//  Created by Mehdi JAFARI ZADEH on 15/07/2023.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
