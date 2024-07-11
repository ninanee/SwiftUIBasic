//
//  BackgroundOverlaySwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-04.
//

import SwiftUI

struct BackgroundOverlaySwiftUIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100, alignment: .center)
    
            )
            .background(
                Circle()
                    .fill(Color.red)
                    .frame(width: 120, height: 120, alignment: .center)
            )
    }
}

#Preview {
    BackgroundOverlaySwiftUIView()
}
