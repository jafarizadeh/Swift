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
                .environmentObject(authenticationManager)
                
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .alert(isPresented: $authenticationManager.showAlert) {
            Alert (title: Text("Error"),
                   message: Text(authenticationManager.errorDescription ?? "Error trying to login with credentials, please try again"),
                   dismissButton: .default(Text("OK"))
            )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
