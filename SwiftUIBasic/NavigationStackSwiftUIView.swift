//
//  NavigationStackSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-15.
//

import SwiftUI

//NavigationStack has the lazy loading

struct NavigationStackSwiftUIView: View {
    
    @State var stackPath:[String] = []
    
    var body: some View {
        
        NavigationStack(path: $stackPath) {
        
            Button("SUPER ME BUTTON") {
                //push 3 screen at once,
                // this is super seguel
                stackPath.append(contentsOf: ["APPLE", "K+NUT"])
            }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SECRRN \(value)")
            }
        }
        
        NavigationStack {
            ScrollView {
                VStack(spacing: 40) {
                    ForEach(0..<10) { index in
                        
//                        NavigationLink(value: index) {
//                            Text("click me: \(index)")
//                        }
                        
                        NavigationLink {
                            MySecondScreen(value: index)
                        } label: {
                            Text("click me: \(index)")
                        }
                    }
                    .navigationTitle("TEXTTTT")
//                    .navigationDestination(for: Int.self) { value in
//                        MySecondScreen(value: value)
//                    }
                }
               
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INI SCREEN: \(value)")
    }
    
    var body: some View {
        Text("SCREEN \(value)")
    }
}

#Preview {
    NavigationStackSwiftUIView()
}
