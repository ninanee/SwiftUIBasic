//
//  GroupSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-15.
//

import SwiftUI

struct GroupSwiftUIView: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello world")
            
            Group {
                Text("Hello world")
                Text("Hello world")
            }
            .font(.headline)
            .foregroundColor(.green)
       
        }
    }
}

#Preview {
    GroupSwiftUIView()
}
