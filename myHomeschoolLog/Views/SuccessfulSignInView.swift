//
//  SuccessfulSignInView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct SuccessfulSignInView: View {
    var body: some View {
        
        VStack{
            Spacer()
                   Text("What would you like to do")
                   
                   
                   
           
           Spacer()
           NavigationLink(destination: UploadPhotoView()) {
              HStack {
                    Text("Upload Photo")
               }
            }
           Spacer()
            NavigationLink(destination: NotesView()) {
               HStack {
                   Text("Add Notes")
               }
           }
           Spacer()
            NavigationLink(destination: MaterialsLogView()) {
               HStack {
                   //Image()
                   Text("Add To Log")
               }
           }
           Spacer()
            NavigationLink(destination: TaskView(taskStore: TaskStore())) {
                   HStack {
                       //Image()
                       Text("Task List")
                   }
                   .padding(.bottom, 40)
               }
      
        }
        
        
       
        
    }
}

struct SuccessfulSignInView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfulSignInView()
    }
}
