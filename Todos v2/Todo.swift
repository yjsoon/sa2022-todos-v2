//
//  Todo.swift
//  Todos v2
//
//  Created by YJ Soon on 2/7/22.
//

import Foundation

struct Todo: Identifiable {
    
    var id = UUID()
    var title: String
    var isCompleted = false
    
}
