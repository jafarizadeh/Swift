//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mehdi JAFARI ZADEH on 19/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert!"){
            showingAlert = true
        }
        .alert("Important MAssage", isPresented: $showingAlert){
            Button("Delete", role: .destructive){}
            Button("Cancel", role: .cancel){}
        } message:{
            Text("Please read this")
        }
        }
    }
    
    func executeDelete(){
        print("Now deleting")
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
