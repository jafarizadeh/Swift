//
//  ChatAppDemoApp.swift
//  ChatAppDemo
//
//  Created by Mehdi on 28/07/2023.
//

import SwiftUI
import Firebase

@main
struct ChatAppDemoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
