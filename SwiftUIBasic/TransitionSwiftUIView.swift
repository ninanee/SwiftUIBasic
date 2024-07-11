//
//  TransitionSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-08.
//

import SwiftUI

struct TransitionSwiftUIView: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .top))
                    .animation(.easeInOut, value: 10)
            }
           
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionSwiftUIView()
}
