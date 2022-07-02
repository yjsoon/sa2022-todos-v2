//
//  TodoDetailView.swift
//  Todos v2
//
//  Created by YJ Soon on 2/7/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        VStack {
            TextField("Please enter a title", text: $todo.title)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                todo.isCompleted.toggle()
            } label: {
                Text("Mark as \(todo.isCompleted ? "incomplete" : "complete")")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.teal)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
            }
            Spacer()
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Not get hot chocolate")))
    }
}
