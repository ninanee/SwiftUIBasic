//
//  SubviewsSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-05.
//

import SwiftUI

struct SubviewsSwiftUIView: View {
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {

            backgroundColor.ignoresSafeArea(.all)
            
            //content
//            contentLayer
            
            VStack {
                Text("Title")
                    .font(.largeTitle)
                
                Button(action: {
                    buttonPressed()
                }, label: {
                    Text("PRESS ME")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
            }
        }
    }
//    
//    var contentLayer: some View {
//        
//        VStack {
//            Text("Title")
//                .font(.largeTitle)
//            
//            Button(action: {
//                buttonPressed()
//            }, label: {
//                Text("PRESS ME")
//                    .font(.headline)
//                    .foregroundStyle(.white)
//                    .padding()
//                    .padding(.horizontal, 10)
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            })
//        }
//    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    SubviewsSwiftUIView()
}
