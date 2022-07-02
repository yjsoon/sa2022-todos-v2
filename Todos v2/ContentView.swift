//
//  ContentView.swift
//  Todos v2
//
//  Created by YJ Soon on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Work on my skill issues"),
        Todo(title: "Watch some Paw Patrol episodes"),
        Todo(title: "Delete everyone's points"),
        Todo(title: "Gotten hot chocolate", isCompleted: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach($todos) { $todo in
                    NavigationLink {
                        TodoDetailView(todo: $todo)
                    } label: {
                        HStack {
                            Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                        }
                    }
                }
                .onDelete { indexSet in
                    todos.remove(atOffsets: indexSet)
                }
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
