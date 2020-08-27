//
//  ContentView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        VStack {
            Text("Welcome to ")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.all)
            Text("myHomeschoolLog")
                           .font(.largeTitle)
                           .multilineTextAlignment(.center)
                           .padding(.all)
            Spacer()
            HStack{
                Spacer()
                Button(action: {
                    print("New user pressed")
                }) {
                Text("New User")
                }
                Spacer()
                Button(action: {
                     print("Return user pressed")
                }) {
                Text("Return User")
                }
                Spacer()
                }
            Spacer()
            
            NavigationLink(destination: NewUserView()) {
              //Z  HStack {
                    Text("New User")
               // }
            }
            NavigationLink(destination: ReturnUser()) {
                      //Z  HStack {
                            Text("Return User  ")
                       // }
                    }
            NavigationLink(destination: AboutUs()) {
                      //Z  HStack {
                            Text("About Us")
                       // }
                    }
//      Button(action: {
//         print("About Us pressed")
//      }) {
//      Text("About Us")
//      }
            Spacer()
            
        }
        
    .navigationBarTitle("myHomeschoolLog")
    }
    
        func returnUser() {
            
        }
        
    
    
    
    

    }
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
}
}
