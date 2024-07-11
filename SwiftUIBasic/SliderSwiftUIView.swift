//
//  SliderSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct SliderSwiftUIView: View {
    
    @State var sliaderValue: Double = 10
    @State var color: Color = .red
    
    var body: some View {
        Text("Rating")
        Text(
            String(format: "%.0f", sliaderValue) )
        .foregroundStyle(color)
        
        
        Slider(
            value: $sliaderValue,
            in: 1...5) {
                Text("Title")
            } minimumValueLabel: {
                Text("1")
                    .font(.largeTitle)
            } maximumValueLabel: {
                Text("5")
                    .font(.headline)
            }

//
//        Slider(value: $sliaderValue, in: 1.0 ... 23.0, step: 1.0)
//            .accentColor(.red)
       
    }
}

#Preview {
    SliderSwiftUIView()
}
