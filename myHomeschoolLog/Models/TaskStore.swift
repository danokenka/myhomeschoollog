//
//  TaskStore.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/27/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI
import Combine

class TaskStore: ObservableObject {
  //  var tasks: [String] = []
   @Published var tasks = [
        "Math",
        "Science",
        "Art",
        "Nature",
        "Reading and Writing",
        "Music",
        "Compassion",
        "Continuous Improvement",
        "Record in log",
        "Upload pictures",
        "Places/Trips"
        ].map { Task(name: $0)}
    
    
    
    
    
}
