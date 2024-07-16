//
//  AppStorageSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-11.
//

import SwiftUI

struct AppStorageSwiftUIView: View {
    
    @State var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            if let cuxUsername = currentUserName {
                Text(cuxUsername)
            }
            
            Button {
                let name = "Nick"
                currentUserName = name
                UserDefaults.standard.set(name, forKey: "name")
                
            } label: {
                Text("save".uppercased())
                
                    
            }.font(.headline)
            //save the name first then using on appear, to see the name again
                .onAppear {
                    currentUserName = UserDefaults.standard.string(forKey: "name")
                }

        }
        
    }
}

#Preview {
    AppStorageSwiftUIView()
}
