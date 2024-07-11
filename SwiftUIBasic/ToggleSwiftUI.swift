//
//  ToggleSwiftUI.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct ToggleSwiftUI: View {
    
    @State var toggleisOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(toggleisOn ? "Online" : "Offilice")
            }
            .font(.title)
            Toggle(
                isOn: $toggleisOn,
                label: {
                Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
        }
        Spacer()
    }
    
}

#Preview {
    ToggleSwiftUI()
}
