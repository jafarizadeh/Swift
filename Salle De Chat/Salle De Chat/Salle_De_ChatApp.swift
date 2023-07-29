//
//  Salle_De_ChatApp.swift
//  Salle De Chat
//
//  Created by Mehdi on 28/07/2023.
//

import SwiftUI
import Firebase

@main
struct Salle_De_ChatApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
