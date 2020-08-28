//
//  ContentView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    // the colors of app ffc93c, 07689f, 40a8c4, a2d5f2
    let yellowScheme = Color(red: 255.0 / 255.0, green: 201.0 / 255.0, blue: 60.0 / 255.0)
    let darkBlue = Color(red: 7.0 / 255.0, green: 104.0 / 255.0, blue: 159.0 / 255.0)
    let middleBlue = Color(red: 64.0 / 255.0, green: 168.0 / 255.0, blue: 196.0 / 255.0)
    let lightBlue = Color(red: 162.0 / 255.0, green: 213.0 / 255.0, blue: 242.0 / 255.0)
    
    struct LabelStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
            .foregroundColor(Color.white)
            .modifier(Shadow())
            .font(Font.custom("Arial Rounded MT Bold", size: 18))
        }
    }
    
    struct ValueStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
            .foregroundColor(Color.yellow)
            .modifier(Shadow())
            .font(Font.custom("Arial Rounded MT Bold", size: 24))
        }
    }
    
    struct Shadow: ViewModifier {
        func body(content: Content) -> some View {
            return content
            .shadow(color: Color.blue, radius: 5, x: 2, y: 2)
        }
    }
    
    struct PadTwoHorizontal: ViewModifier {
        func body(content: Content) -> some View {
            return content
            .padding(.bottom, 20)
            .padding(.top, 20)
                .padding(.leading, 30)
            .padding(.trailing, 30)
        }
    }
    
    
  var body: some View {
    
    VStack() {
        Text("Welcome, If you are a return user then sign in, otherwise sign up").modifier(PadTwoHorizontal())
      Image("background")
      TextField("Email", text: self.$email)
      TextField("Password", text: self.$password)
        HStack {
            NavigationLink(destination: NewUserView()) {
                 HStack {
                     Text("Sign Up")
                 }
             } // Navigation Link
            .modifier(PadTwoHorizontal())
            .modifier(LabelStyle())
            .modifier(Shadow())
            NavigationLink(destination: SuccessfulSignInView()) {
                HStack {
                    Text("Sign In")
                }
            } // Navigation Link

            .modifier(PadTwoHorizontal())
            .modifier(LabelStyle())
            .modifier(Shadow())
      //  .padding()
        }
      
    
    
    
    
    VStack {
        
        
        
        
        Spacer()
//        NavigationLink(destination: NewUserView()) {
           HStack {
            Text(" .   .  ")

            }
//         } // NavLink NewUser
        Spacer()
//        NavigationLink(destination: SignInView(
//
//        )) {
            HStack {
                Text("   .   ")

            }
//        } // NavLink SignIn
        Spacer()
//         NavigationLink(destination: AboutUs()) {
            HStack {
                //Image()
                Text("(......)")

            }
//        } // NavLink AboutUs

            Spacer()
            
        } // VStack 2
       .background(yellowScheme)
        .background(Image("background"), alignment: .center)
    .navigationBarTitle("myHomeschoolLog")
    } // VStack 1
    }

        func returnUser() {
            
        }
        
    
 
    
    

    }

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
}
}
