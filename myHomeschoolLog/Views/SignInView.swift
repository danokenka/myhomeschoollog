//
//  SignInView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        
        VStack {
            
            NavigationLink(destination: SuccessfulSignInView()) {
                HStack {
                    Text("Succesful Login")
                }
            }
            HStack {
                Text("Username")
                Text("Password")
            }
            HStack {
                Text("Don")
                Text("Billford")
            }
        }
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
