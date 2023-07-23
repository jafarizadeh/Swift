//
//  TasksView.swift
//  ToDoDemo
//
//  Created by Mehdi JAFARI ZADEH on 23/07/2023.
//

import SwiftUI

struct TasksView: View {
    var body: some View {
        VStack {
            Text("My tasks")
                .font(.title)
                .bold()
                .padding()
                .frame(maxWidth: .infinity,
                       alignment: .leading)
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(Color(hue: 0.088,
                          saturation: 0.141,
                          brightness: 0.972))
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
    }
}
