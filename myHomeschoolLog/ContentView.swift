//
//  ContentView.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/26/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    @State private var email = ""
//    @State private var password = ""
//    @State var username: String = ""
//     @State var password: String = ""
    
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
            .shadow(color: Color.black, radius: 5, x: 2, y: 2)
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
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var isLoginValid: Bool = false
    @State private var shouldShowLoginAlert: Bool = false
    
  var body: some View {
    
    NavigationView {
          VStack(alignment: .center) {
            TextField("username", text: self.$email)
            TextField("password", text: self.$password)
            
            NavigationLink(destination: SuccessfulSignInView(),
                           isActive: self.$isLoginValid) {
                    /*
                     Here we put the content view of `NavigationLink`.
                     It could be any `View` even `Button` but in this
                     example we use a `Text` with `onTapGesture`.
                     */
                    Text("Login")
                        .onTapGesture {
                        //determine login validity
                        let isLoginValid = self.email == "Klaz" && self.password == "P"
                        
                        //trigger logic
                        if isLoginValid {
                          self.isLoginValid = true //trigger NavigationLink
                        }
                        else {
                          self.shouldShowLoginAlert = true //trigger Alert
                        }
                    }
            }
          }
          .navigationBarTitle("Login Screen")
          .alert(isPresented: $shouldShowLoginAlert) {
            Alert(title: Text("Email/Password incorrect"))
          }
        }
  
    
    
//
//    VStack() {
//        Text("Welcome,").modifier(PadTwoHorizontal())
////        Text("Welcome, If you are a return user then sign in, otherwise sign up").modifier(PadTwoHorizontal())
//    //  Image("background")
//        Spacer()
//    //  TextField("Email", text: self.$email)
//        TextField("Username", text: $username)
//      //  TextField(title: , text: $username)
//     // TextField("Password", text: self.$password)
//     //   TextField(title: , text: $username)
//
//        .padding()
//            .background(lightBlue)
//        .cornerRadius(5.0)
//        .padding(.bottom, 20)
//        SecureField("Password", text: $password)
//                       .padding()
//                       .background(lightBlue)
//                       .cornerRadius(5.0)
//                       .padding(.bottom, 20)
////        Button(action: {
////
//
//               NavigationLink(destination: SuccessfulSignInView()) {
//                  Text("Press on me")
//               }.buttonStyle(PlainButtonStyle())
//
////            print("Button tapped")
//
//
////            NavigationVIew {
////
////            }
////            NavigationLink(destination: SuccessfulSignInView()) {
////
////                }
////            }) {
////           LoginButtonContent()
////        }
////        NavigationLink(destination: SuccessfulSignInView()) {
////            HStack {
////                       VStack {
////                //[…]
////                    Text("LOGIN")
////                        .font(.headline)
////                        .foregroundColor(.white)
////                        .padding()
////                        .frame(width: 220, height: 60)
////                        .background(Color.green)
////                        .cornerRadius(15.0)
////                }
////                    .padding()
////            }
////        } // Navigation Link
////        .background(lightBlue)
////        .modifier(PadTwoHorizontal())
////        .modifier(LabelStyle())
////        .modifier(Shadow())
//        Spacer()
//        HStack {
//            NavigationLink(destination: NewUserView()) {
//                 HStack {
//                     Text("Sign Up")
//                 }
//             } // Navigation Link
//            .modifier(PadTwoHorizontal())
//            .modifier(LabelStyle())
//            .modifier(Shadow())
//
//
//            NavigationLink(destination: AboutUs()) {
//                HStack {
//                    Text("About Us")
//                }
//            } // Navigation Link
//
//            .modifier(PadTwoHorizontal())
//            .modifier(LabelStyle())
//            .modifier(Shadow())
//      //  .padding()
//        }
//
//
//
//
//
//
//       .background(yellowScheme)
//        .background(Image("background"), alignment: .center)
//    .navigationBarTitle("myHomeschoolLog")
//    } // VStack 1
//    }
//
//    func returnUser() {
//
//        }
//
//
//
//

    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
}
}

struct WelcomeText : View {
    var body: some View {
        return Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct LoginButtonContent : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
