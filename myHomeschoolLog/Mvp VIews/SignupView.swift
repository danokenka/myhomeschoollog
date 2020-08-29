//
//  SignupView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/28/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct SignupView: View {
       
    @State private var email = ""
    @State private var password = ""
    @State private var confirmedPassword = ""
    
    @State private var formOffset: CGFloat = 0
    
    var body: some View {
        
       return VStack(spacing: 40) {
            Image("Logo")
            Text("Sign Up").font(.title).bold()
            VStack {
                TextField(value: self.$email, placeholder: "Email", icon: Image(systemName: "at"), onEditingChanged: { flag in
                    withAnimation {
                        self.formOffset = flag ? -150 : 0
                    }
                    
                })
                TextField(value: self.$password, placeholder: "Password", icon: Image(systemName: "lock"), isSecure: true)
                TextField(value: self.$confirmedPassword, placeholder: "Confirm Password", icon: Image(systemName: "lock.rotation"), isSecure: true)
                Button(text: "Sign up") {
                    
                }
            }
            
            Button(action: {
            }) {
              HStack {
                Text("Already have an account?").accentColor(Color.accentColor)
                  }
              }
            
       }.padding().offset(y: self.formOffset)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
