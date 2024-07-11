//
//  ContextMenuSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-09.
//

import SwiftUI

struct ContextMenuSwiftUIView: View {
    
    @State var backgroundColor: Color = Color.gray
    @State var textfiledText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        VStack {
            TextField("Type something here....", text: $textfiledText)
                .padding()
                .foregroundColor(.red)
                .background(Color.gray.cornerRadius(10))
                .font(.headline)
            
            
            Button(action: {
                                saveText()
            }, label: {
                Text("Save".uppercased())
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.blue.cornerRadius(10))
                    .foregroundColor(.white)
                    .font(.headline)
            })
            
            ForEach(dataArray, id: \.self) { data in
                Text(data)
            }}
        
       Spacer()
          
        VStack(alignment: .leading, spacing: 10.0) {
        
            Image(systemName: "house.fill")
                .font(.title)
            Text("Yun House")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .pink
            },
                   label: {
                Label("Button1", systemImage: "flame.fill")
            })
   
            
            Button(action: {
                backgroundColor = .green
            },
                   label: {
                Text("Button")
                Image(systemName: "heart.fill")
            })
   
            
        })
    }
    
    func saveText() {
        dataArray.append(textfiledText)
        textfiledText = ""
    }
}

#Preview {
    ContextMenuSwiftUIView()
}
