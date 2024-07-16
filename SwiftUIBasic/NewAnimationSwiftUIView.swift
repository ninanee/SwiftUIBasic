//
//  NewAnimationSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-15.
//

import SwiftUI

struct NewAnimationSwiftUIView: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                
                Button("Action 1") {
                    animate1.toggle()
                }
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
            }
            
            Menu("IM MENU, CLICK ME") {
                Button("Action 1") {
                   
                }
                Button("Action 2") {
                    
                }
                Button("Action 1") {
                   
                }
                Button("Action 2") {
                    
                }
            }
               
        }
        
        // this is a progress, just want to anminated the value fot 1
        .animation(.spring(), value: animate1)
    }
}

#Preview {
    NewAnimationSwiftUIView()
}
