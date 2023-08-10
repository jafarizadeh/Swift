//
//  User.swift
//  Messenger
//
//  Created by Mehdi on 10/08/2023.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullname: String
    let email: String
    var profileImageUrl: String?
}

extension User {
    static let MOCK_USER = User(fullname: "Mehdi", email: "mehdi@gmail.com", profileImageUrl: "Profile")
}
