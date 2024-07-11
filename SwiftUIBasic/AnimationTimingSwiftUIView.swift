//
//  AnimationTimingSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-08.
//

import SwiftUI

struct AnimationTimingSwiftUIView: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
                    
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 100, height: 100)
    
                }
        }
    }

#Preview {
    AnimationTimingSwiftUIView()
}
