//
//  TaskView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/27/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct TaskView: View {
    // define property and instance
    @ObservedObject var taskStore: TaskStore
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
            // New way
            List(taskStore.tasks) { task in
                Text(task.name)
            }
        .navigationBarTitle("Tasks")
        .navigationBarItems(
            trailing:
                Button(
                    action: { self.modalIsPresented = true }
                ) {
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView(taskStore: self.taskStore)
        }

        

        
                //old way
                
        //        List(taskStore.tasks.indices) { index in
        //            Text(self.taskStore.tasks[index].name)
        //        }
    }
    
    
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(taskStore: TaskStore())
    }
}

