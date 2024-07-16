//
//   ListSwipeSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-12.
//

import SwiftUI

struct _ListSwipeSwiftUIView: View {
    
    @State var fruit: [String] = ["Apple","Orange","Banana","Peach"]
    var body: some View {
        List {
            ForEach(fruit, id: \.self) { item in
                Text(item)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.red)
                    }
                
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("share") {
                            
                        }
                        .tint(.yellow)
           
                    }
            }
//            .onDelete(perform: { indexSet in
//                fruit.remove(atOffsets: indexSet)
//            })
        }
    }
}

#Preview {
    _ListSwipeSwiftUIView()
}
