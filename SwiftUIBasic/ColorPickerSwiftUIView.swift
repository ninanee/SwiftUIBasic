//
//  ColorPickerSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct ColorPickerSwiftUIView: View {
    
    @State var backgroundColor : Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            ColorPicker("Select a color",
                        selection: $backgroundColor, 
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerSwiftUIView()
}
