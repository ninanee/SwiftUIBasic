//
//  SafeAreaInsetsSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-15.
//

import SwiftUI

struct SafeAreaInsetsSwiftUIView: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(height: 300)
            }
            .navigationTitle("SafeAreaInsets")
            // we can use overlay to display other elements
//            .overlay {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .foregroundColor(.blue)
//
//            }
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
                
            }
        }
    }
}

#Preview {
    SafeAreaInsetsSwiftUIView()
}
