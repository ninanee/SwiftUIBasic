//
//  ContentUnavailableViewSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-16.
//

import SwiftUI

struct ContentUnavailableViewSwiftUIView: View {
    var body: some View {
        
        if #available(iOS 17.0, *) {
            ContentUnavailableView("No Wifi Connection", systemImage: "wifi.slash", description: Text("This is some text"))
        } else {
            
        }
        
    }
}

#Preview {
    ContentUnavailableViewSwiftUIView()
}
