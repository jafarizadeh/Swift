//
//  LoginView.swift
//  AuthenticatorDemo
//
//  Created by Mehdi JAFARI ZADEH on 24/07/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 40) {
            Title()
            PrimaryButton(image: "faceid", text: "Login with FaceID")
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(LinearGradient(colors: [.blue,
                                             .purple],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
