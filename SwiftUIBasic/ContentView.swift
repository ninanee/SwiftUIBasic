//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, everyone!")
                .foregroundColor(Color.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
