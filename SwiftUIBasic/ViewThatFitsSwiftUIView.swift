//
//  ViewThatFitsSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-16.
//

import SwiftUI

struct ViewThatFitsSwiftUIView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                // fits the one that fits the screen mostly
                Text("This is the text that I want to display to the users")
                Text("This is some text")
                Text("This is the text that I want to display to the users")

            }
              
                
        }
        .frame(height: 300)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsSwiftUIView()
}
