//
//  GradientSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-04.
//

import SwiftUI

struct GradientSwiftUIView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.gray
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue, Color.green]),
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 400)
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
        Image(systemName: "heart.fill")
//            .font(.system(size: 200))
//            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
        //make it as a circle, using frame and cornerRadius or clipShape()
        Text("Hello, ni")
            .background(Color.green)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    GradientSwiftUIView()
}
