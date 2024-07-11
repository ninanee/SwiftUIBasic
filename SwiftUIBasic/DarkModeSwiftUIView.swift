//
//  DarkModeSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct DarkModeSwiftUIView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                
                VStack (spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This color is BLACK")
                        .foregroundStyle(.black)
                    
                    Text("This color is WHITE")
                        .foregroundStyle(.white)
                }
               
            }
            .navigationTitle("Dark mode bootcamp")
        }
    }
}

#Preview {
    DarkModeSwiftUIView()
}
