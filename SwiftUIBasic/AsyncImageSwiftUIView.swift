//
//  AsyncImageSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-11.
//

import SwiftUI

struct AsyncImageSwiftUIView: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url) { returnImage in
            returnImage
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        } placeholder: {
            ProgressView()
        }

    }
}

#Preview {
    AsyncImageSwiftUIView()
}
