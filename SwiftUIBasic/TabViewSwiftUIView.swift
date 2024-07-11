//
//  TabViewSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct TabViewSwiftUIView: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]
    
    var body: some View {

        
        TabView {
            
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
            
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.green)
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
//        TabView(selection: $selectedTab) {
//            
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("Browse tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browe")
//                }
//                .tag(1)
//            
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

#Preview {
    TabViewSwiftUIView()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(.all)
            
            VStack {
                Text("Home tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .background(.white)
                        .padding(.horizontal)
                        .cornerRadius(10)
                })
            }
         
            
        }
       
    }
}
