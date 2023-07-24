//
//  ContentView.swift
//  AuthenticatorDemo
//
//  Created by Mehdi JAFARI ZADEH on 24/07/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authenticationManager = AuthenticationManager()
    var body: some View {
        VStack {
            LoginView()
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
