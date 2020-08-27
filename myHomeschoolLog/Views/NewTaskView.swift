//
//  NewTaskView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/27/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    @State var text = ""
    
    var body: some View {
        VStack {
            TextField("Task Name", text: $text)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
