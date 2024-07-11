//
//  ListSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-09.
//

import SwiftUI

struct ListSwiftUIView: View {
    
    @State var fruits:[String] = ["apple", "orange", "banana", "peach"]
    
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List{
                Section(
                    header:
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.orange)
                ){
                    ForEach(fruits, id: \.self) { friut in
                        Text(friut.capitalized)
                            .font(.caption)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)}
                }
            }
        }
        
    }
    
    func delete(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ListSwiftUIView()
}
