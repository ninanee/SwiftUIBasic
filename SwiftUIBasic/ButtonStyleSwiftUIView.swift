//
//  ButtonStyleSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-12.
//

import SwiftUI

struct ButtonStyleSwiftUIView: View {
    var body: some View {
        VStack {
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .controlSize(.large)
            .buttonBorderShape(.circle)
            .background(Color(red: 0, green: 0, blue: 0.5))
            .clipShape(Capsule())
           

        }
    }
}

#Preview {
    ButtonStyleSwiftUIView()
}
