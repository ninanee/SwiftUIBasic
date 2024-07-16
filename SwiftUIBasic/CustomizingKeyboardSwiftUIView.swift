//
//  CustomizingKeyboardSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-12.
//

import SwiftUI

struct CustomizingKeyboardSwiftUIView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("sth to the console")
            }
    }
}

#Preview {
    CustomizingKeyboardSwiftUIView()
}
