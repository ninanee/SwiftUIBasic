//
//  PopoverSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-15.
//

import SwiftUI

struct PopoverSwiftUIView: View {
    
    @State private var showPopover : Bool = false
    @State private var rate: [String] = ["Very Good 👍🏼", "Average 😀", "Very Bad 🥲"]
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("Provide Feedback") {
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
        
//            .popover(isPresented: $showPopover, content: {
//                Text("HELLO! ")
//                    .presentationCompactAdaptation(.popover)
//            })
            
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottom), arrowEdge: .top, content: {
//                Text("HELLO! ")
                VStack(alignment: .leading, spacing: 12, content: {
                    ForEach(rate, id: \.self) { data in
                        Text("\(data)")
                    }
                })
                    .presentationCompactAdaptation(.popover)
            })
        }
    }
}

#Preview {
    PopoverSwiftUIView()
}
