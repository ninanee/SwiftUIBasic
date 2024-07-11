//
//  PickerSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct PickerSwiftUIView: View {
    
    @State var selection: String = "1"
    let filterOptions: [String] = [
     "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        // overwriting all the segmentcontrol appearance 
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
    }
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Age: ")
                Text(selection)
            }
            List {
                Picker(selection: $selection) {
                    ForEach(filterOptions, id: \.self) { option in
                        Text(option)
                            .tag(option)
                    }
                } label: {
                    Text("Filter")
                }
                .pickerStyle(SegmentedPickerStyle()) // .automatic .segement whatever
//                .background(Color.gray)
//                .cornerRadius(29)
            }
        }
    }
}

#Preview {
    PickerSwiftUIView()
}
