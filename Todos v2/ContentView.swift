//
//  ContentView.swift
//  Todos v2
//
//  Created by YJ Soon on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var todos = [
        Todo(title: "Work on my skill issues"),
        Todo(title: "Watch some Paw Patrol episodes"),
        Todo(title: "Delete everyone's points"),
        Todo(title: "Gotten hot chocolate", isCompleted: true)
    ]
    
    var body: some View {
        NavigationView {
            List(todos) { todo in
                Text(todo.title)
            }
            .navigationTitle("Skill Issues")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
