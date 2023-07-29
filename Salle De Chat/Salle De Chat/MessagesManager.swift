//
//  MessagesManager.swift
//  Salle De Chat
//
//  Created by Mehdi on 29/07/2023.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class MessagesManager: ObservableObject {
    @Published private(set) var messages: [Message] = []
    @Published private(set) var lastMessageId = ""
    let db = Firestore.firestore()
    
    init() {
        getMessages()
    }
    
    func getMessages() {
        db.collection("messages").addSnapshotListener { querySnapshot, error in
            guard let documents = querySnapshot?.documents else {
                print("Error fetching documents: \(String(describing: error))")
                return
            }
            
            self.messages = documents.compactMap { document -> Message? in
                do {
                    return try document.data(as: Message.self)
                } catch {
                    print("Error decoding document into Message: \(error)")
                    return nil
                }
            }
            
            self.messages.sort { $0.timestamp < $1.timestamp}
            
            if let id = self.messages.last?.id {
                self.lastMessageId = id
            }
        }
    }
    
    func sendMessage(text: String) {
        do {
            let newMessage = Message(id: "\(UUID())", text: text, timestamp: Date())
            
            try db.collection("messages").document(newMessage.id).setData(from: newMessage)
        } catch {
            print("Error adding message to Firestore")
        }
    }
    
    func deleteMessage(id: String) {
        db.collection("messages").document(id).delete() { err in
            if let err = err {
                print("Error removing message: \(err)")
            } else {
                print("Message successfully removed!\(id)")
            }
        }
    }
    
    func reset() {
        for message in messages {
            deleteMessage(id: message.id)
        }
        messages = []
        lastMessageId = ""
    }
}

