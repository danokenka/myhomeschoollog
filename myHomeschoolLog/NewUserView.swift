//
//  NewUserView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct NewUserView: View {
    var body: some View {
        
        VStack {
        
         Spacer()
        Text("What would you like to do?")
        
            
            Spacer()
                   NavigationLink(destination: NewUserView()) {
                      HStack {
                            Text("New User")
                       }
                    }
                   Spacer()
                    NavigationLink(destination: ReturnUser()) {
                       HStack {
                           Text("Return User  ")
                       }
                   }
                   Spacer()
                    NavigationLink(destination: AboutUs()) {
                       HStack {
                           //Image()
                           Text("About Us")
                       }
                   }
                   Spacer()
            
        }
    }
}

struct NewUserView_Previews: PreviewProvider {
    static var previews: some View {
        NewUserView()
    }
}
