//
//  newTodo.swift
//  toDO
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct newTodo: View {
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoitems: [ToDoItem]
    
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.pink)
            
            TextField("Enter the task description here...", text: $title)
                .padding(.leading, 70.0)
                .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
            //slay
            Toggle(isOn: $isImportant) {
                Text("Is this important?")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.red)
                    .padding(.leading, 40.0)
                
                    .padding(.trailing)
                    .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
                Button("Add") {
                    self.addTask(title:self.title, isImportant:self.isImportant)

                }
                
                .padding(.leading, 180.0)
                .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
            }
            }
        }
        private func addTask(title: String, isImportant: Bool = false)
        {let task = ToDoItem(title:title, isImportant:isImportant)
            toDoitems.append(task)
        }
    }
    
    struct newTodo_Previews: PreviewProvider {
        static var previews: some View {
            newTodo(title: "", isImportant: false, toDoitems: .constant([]))
        }
    }

