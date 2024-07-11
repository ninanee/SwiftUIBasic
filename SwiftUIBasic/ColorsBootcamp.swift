//
//  Color.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-03.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(/*Color(#colorLiteral(red: 0.4352941176, green: 0.5607843137, blue: 0.9176470588, alpha: 1))*/
            
                Color(uiColor: .secondarySystemBackground))
            .frame(width: 300, height: 200)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    
    }
}

#Preview {
    ColorsBootcamp()
}
