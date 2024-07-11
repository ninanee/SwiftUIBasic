//
//  GridSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-05.
//

import SwiftUI

struct GridSwiftUIView: View {
    
    let columna: [GridItem] = [
//         GridItem(.fixed(50), spacing: nil, alignment: nil),
//         GridItem(.fixed(150), spacing: nil, alignment: nil),
//         GridItem(.fixed(50), spacing: nil, alignment: nil),
//         GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 50, maximum: 200), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 50, maximum: 200), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView {
            Rectangle()
                .fill(Color.white)
                .frame(height: 300)
            
            LazyVGrid(columns: columna, content: {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height: 150)
                }
            })
        }
      
        
      
    }
}

#Preview {
    GridSwiftUIView()
}
