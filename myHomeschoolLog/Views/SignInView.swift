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
    var body: some View {
        
        VStack {
            Spacer()
            NavigationLink(destination: SuccessfulSignInView()) {
                HStack {
                    Text("Succesful Login")
                }
            }
            Spacer()
            HStack {
                Text("Username")
                Text("Password")
            }
//            HStack {
//                Spacer()
//                TextField("Username", text: $username.name)
//                Spacer()
//                TextField("Password", text: $password.name)
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
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(
//            username: .constant(Username(name: "Danny")), password: .constant(Password(name: "password2"))
        )
    }
}
