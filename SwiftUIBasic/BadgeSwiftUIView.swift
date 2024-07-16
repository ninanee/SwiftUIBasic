//
//  BadgeSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-12.
//

import SwiftUI


//.badge work for
//TabView and List
struct BadgeSwiftUIView: View {
    var body: some View {
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                }
                .badge(5)
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                }
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                }
        }
    }
}

#Preview {
    BadgeSwiftUIView()
}
