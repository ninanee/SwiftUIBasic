//
//  InitializerSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-04.
//

import SwiftUI

struct InitializerSwiftUIView: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(backgroundColor: Color, count: Int, title: String) {
        self.backgroundColor = backgroundColor
        self.count = count
        self.title = title
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        
        VStack {
            ForEach(0..<10) { index in
//                Text("Hi \(index + 1)")
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    InitializerSwiftUIView(backgroundColor: .blue, count: 24, title: "Peach")
}
