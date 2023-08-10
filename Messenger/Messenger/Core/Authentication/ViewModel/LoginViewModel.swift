//
//  LoginViewModel.swift
//  Messenger
//
//  Created by Mehdi on 10/08/2023.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
