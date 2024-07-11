//
//  ConditionalSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-08.
//

import SwiftUI

struct ConditionalSwiftUIView: View {
    
    @State var showCircle: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20, content: {
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            } else {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
           
        })
        
        Spacer()
    }
}

#Preview {
    ConditionalSwiftUIView()
}
