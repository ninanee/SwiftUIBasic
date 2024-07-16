//
//  AnyLayoutSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-16.
//

import SwiftUI

struct AnyLayoutSwiftUIView: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12, content: {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
           
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
//            let layout: AnyLayout = AnyLayout(VStackLayout())
            
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")}
            
            
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            } else {
//                HStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }
            
        })
    }
}

#Preview {
    AnyLayoutSwiftUIView()
}
