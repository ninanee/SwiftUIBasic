//
//  bindingSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-08.
//

import SwiftUI

struct bindingSwiftUIView: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "title"
    
    var body: some View {
        ZStack {
            
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                ButtonView(backgroundColor: $backgroundColor, title: $title)
                Text(title)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    bindingSwiftUIView()
}

struct ButtonView: View {
    
    @Binding var backgroundColor : Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button(action: {
            
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "Title has changed"
            
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
        })
    }
}
