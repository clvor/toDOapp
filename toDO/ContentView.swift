//
//  ContentView.swift
//  toDO
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    
    @State private var showNewTask = false
    
    var body: some View {
        
        VStack{
            HStack{
                Text("To Do List")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.pink)
                    .padding(.top, 9.0)
                
                
                Button(action: {
                    self.showNewTask = true
                    
                })
                {
                    Text("+")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color.pink)
                        .padding(.top, 9.0)
                }
            }
            Spacer()
            List {
                ForEach (toDoItems) {
                    toDoItems in Text(toDoItems.title)
                }
            }
            if showNewTask {
                newTodo(title: "", isImportant: false, toDoitems: $toDoItems)
                
            }
        }
        
    }
}
           struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
    }
    

