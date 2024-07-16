//
//  FocusStateSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-12.
//

import SwiftUI

struct FocusStateSwiftUIView: View {
    //To make the code more readable, we can use ENUM
    
    enum OnboardingField: Hashable{
        case username
        case password
    }
    
    
    @State private var username: String = ""
//    @FocusState private var usernameFocus: Bool
    
    @State private var password: String = ""
//    @FocusState private var passwordFocus: Bool
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack {
            TextField("Add your name here", text: $username)
//                .focused($usernameFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            TextField("Add your password here", text: $password)
//                .focused($passwordFocus)
                .focused($fieldInFocus, equals: .password)

                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
//            
//            Button("TOGGLE FOCUS STATE") {
//                let usernameISValid = !username.isEmpty
//                let passwordISValid = !password.isEmpty
//                
//                if usernameISValid && passwordISValid {
//                    print("SIGN UP")
//                } else if usernameISValid {
//                    usernameFocus = false
//                    passwordFocus = true
//                } else {
//                    usernameFocus = true
//                    passwordFocus = false
//                }
//            }
            
            Button("SIGN UP 🧚🏼") {
//                usernameFocus.toggle()
                
                let usernameISValid = !username.isEmpty
                let passwordISValid = !password.isEmpty
                
                if usernameISValid && passwordISValid {
                    print("SIGN UP")
                } else if usernameISValid {
//                    usernameFocus = false
//                    passwordFocus = true
                    fieldInFocus = .password
                } else {
//                    usernameFocus = true
//                    passwordFocus = false
                    fieldInFocus = .username
                }
            }
        }
        .padding(40)
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1 ){
//                self.usernameFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateSwiftUIView()
}
