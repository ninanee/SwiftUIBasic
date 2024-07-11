//
//  AnimationSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-08.
//

import SwiftUI

struct AnimationSwiftUIView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
               
            }, label: {
                Text("Button")
            })
            
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: 100, height: 100)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationSwiftUIView()
}
