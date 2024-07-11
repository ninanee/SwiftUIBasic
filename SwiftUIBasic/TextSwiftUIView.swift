//
//  TextSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-03.
//

import SwiftUI

struct TextSwiftUIView: View {
    var body: some View {
        Text("Hello, World! Trying to learn and kepp myself motivatied".capitalized)
            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough()
        
//            .baselineOffset(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
//            .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 100, alignment: .center)
    }
}

#Preview {
    TextSwiftUIView()
}
