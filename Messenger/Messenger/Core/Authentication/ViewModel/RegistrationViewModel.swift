//
//  RegistrationViewModel.swift
//  Messenger
//
//  Created by Mehdi on 10/08/2023.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func creatUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullname: fullname)
    }
}
