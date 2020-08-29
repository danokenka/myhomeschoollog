//
//  SignInView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct SignInView: View {
//    @Binding var username: Username
//    @Binding var password: Password
//    var myUserName = "Dan"
//    var myPassword = "password1"
    @State private var email = ""
    @State private var password = ""
      
    var body: some View {
        
        // Sign In
        VStack() {
          Text("iOS App Template")
          Image("iosapptemplate")
          TextField("Email", text: self.$email)
          TextField("Password", text: self.$password)
          Button("Sign In") {}
        
        
        VStack {
//            Spacer()
//            NavigationLink(destination: SuccessfulSignInView()) {
//                HStack {
//                    Text("Succesful Login")
//                }
//            }
            Spacer()
            HStack {
                Text("Username")
                Text("Password")
            }
//            HStack {
//                Spacer()
//                TextField("Email", text: self.$email)
//                Spacer()
//                TextField("Password", text: self.$password)
//                Spacer()
//            }
            HStack {
                Text("Don")
                Text("Billford")
            }
            Spacer()
        } // VStack
            .background(ContentView().yellowScheme)
             .background(Image("background"), alignment: .center)
            .navigationBarTitle("Sign In", displayMode: .large)
    } // VStack
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(
//            username: .constant(Username(name: "Danny")), password: .constant(Password(name: "password2"))
        )
    }
}
