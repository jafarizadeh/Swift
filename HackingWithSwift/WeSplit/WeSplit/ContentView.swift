//
//  ContentView.swift
//  WeSplit
//
//  Created by Mehdi JAFARI ZADEH on 18/07/2023.
//

import SwiftUI

struct ContentView: View {
    let student = ["name1", "name2", "name3"]
    @State private var selectedStudent = "name1"
    
    var body: some View {
        NavigationView{
            Form {
                Picker("Select your student", selection:
                        $selectedStudent){
                    ForEach(student, id: \.self){
                        Text($0)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
