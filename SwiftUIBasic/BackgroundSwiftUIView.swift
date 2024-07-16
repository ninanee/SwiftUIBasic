//
//  BackgroundSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-12.
//

import SwiftUI


// .background(.thinMaterial) with new featuer in iOS15. for the .thinMaterial//
//thickMaterial
//ultraThinMaterial

struct BackgroundSwiftUIView: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
                    }

            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Color.gray
        )
    }
}

#Preview {
    BackgroundSwiftUIView()
}
