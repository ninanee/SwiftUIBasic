//
//  ModelSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct UserModel: Identifiable {
    var id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
}

struct ModelSwiftUIView: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nico", userName: "Nico Nee", followerCount: 210),
        UserModel(displayName: "Ning", userName: "Ning AN", followerCount: 54),
        UserModel(displayName: "Amy", userName: "AMY1993", followerCount: 3444),
        UserModel(displayName: "Chris", userName: "Chris2009", followerCount: 310)
        ]

    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(users) { user in
                   HStack {
                        Circle()
                            .frame(width: 30, height: 35)
                       VStack {
                           Text(user.displayName)
                           Text("@\(user.userName)")
                               .font(.caption)
                               .foregroundStyle(.gray)
                           

                       }
                       Spacer()
                       Image(systemName: "checkmark.seal.fill")
                           .foregroundColor(.green)
                       VStack {
                           Text("\(user.followerCount)")
                               .font(.headline)
                           Text("follwers")
                               .foregroundStyle(.gray)
                               .font(.caption)
                           
                       }
                       
                    }
                    .padding(.vertical, 10)
                   
                }
                
//                ForEach(users, id: \.self) { user in
//                    HStack {
//                        Circle()
//                            .frame(width: 30, height: 35)
//                        Text(user.displayName)
//                    }
//                    .padding(.vertical, 10)
//                   
//                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("User")
        }
    }
}

#Preview {
    ModelSwiftUIView()
}
