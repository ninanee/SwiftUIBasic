//
//  Shapes.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-03.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
//        Circle()
////            .stroke(Color.red)
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.gray, lineWidth: 50)
        
        Ellipse()
            .frame(width: 200, height: 200)
    }
}

#Preview {
    Shapes()
}
