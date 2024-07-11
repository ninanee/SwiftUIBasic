//
//  SafeAreaSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-05.
//

import SwiftUI

struct SafeAreaSwiftUIView: View {
    
    @State var title: String = "This is my Title"
    
    var body: some View{
        
        VStack(spacing: 20, content: {
            
            Text(title)
            
            Button("Press me") {
                self.title = "Button1 was pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button2 is pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "Button #3 is pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
                
            })
            
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0)
                    )
                    
            })
        })
    }
}

#Preview {
    SafeAreaSwiftUIView()
}
