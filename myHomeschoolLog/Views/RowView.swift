//
//  RowView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/27/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @Binding var task: Task
    var body: some View {
        Text(task.name)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView( task: .constant(Task(name: "To Do")))
    }
}
