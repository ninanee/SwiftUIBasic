//
//  StateSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-05.
//

import SwiftUI

struct StateSwiftUIView: View {
    
    //@state is telling the view, there is sth changing
    
    @State var background: Color = Color.green
    @State var myTitle: String = "Title"
    @State var counts: Int = 0
    
    var body: some View {
        ZStack {
            
            background.ignoresSafeArea(.all)

            //content
            
            VStack(spacing: 20, content: {
                Text(myTitle)
                    .font(.title)
                
                Text("count: \(counts)")
                    .font(.headline)
                    .underline()
                
                HStack {
                    Button("Button 1") {
                        background = Color.blue
                        myTitle = "Button 1 is pressed"
                        counts += 1
                        
                    }
                    
                    Button("Button 2") {
                        background = Color.purple
                        myTitle = "Button 2 is pressed"
                        counts += 1
                    }
                }
            }).foregroundColor(.white)
        }
    }
}

#Preview {
    StateSwiftUIView()
}
