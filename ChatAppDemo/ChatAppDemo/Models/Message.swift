//
//  Message.swift
//  ChatAppDemo
//
//  Created by Mehdi on 28/07/2023.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
