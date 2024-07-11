//
//  ScrollviewSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-04.
//

import SwiftUI

struct ScrollviewSwiftUIView: View {
    var body: some View {
//        ScrollView {
//            VStack {
//                ForEach(0..<20) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 200, height: 200)
//                       
//                }
//            }
//        }
        ScrollView(Axis.Set.horizontal, content: {
            LazyHStack {
                ForEach(0..<20) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 200, height: 200)
                       
                }
            }
        })
    }
}

#Preview {
    ScrollviewSwiftUIView()
}
