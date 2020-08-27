//
//  ReturnUser.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct ReturnUser: View {
    var body: some View {
        
        VStack {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        
        Spacer()
         NavigationLink(destination: MaterialsLogView()) {
            HStack {
                //Image()
                Text("Teacher Reviewer")
            }
        }
        Spacer()
         NavigationLink(destination: MaterialsLogView()) {
            HStack {
                //Image()
                Text("Student")
            }
        }
        Spacer()
        
        }
        
    }
}

struct ReturnUser_Previews: PreviewProvider {
    static var previews: some View {
        ReturnUser()
    }
}
