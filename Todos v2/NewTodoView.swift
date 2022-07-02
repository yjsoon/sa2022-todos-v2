//
//  NewTodoView.swift
//  Todos v2
//
//  Created by YJ Soon on 2/7/22.
//

import SwiftUI

struct NewTodoView: View {
    
    @State var todoTitle = ""
    @Binding var todos: [Todo]
    
    var body: some View {
        Form {
            TextField("Enter todo name", text: $todoTitle)
            
            Button("Save todo") {
                let todo = Todo(title: todoTitle)
                todos.append(todo)
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}
