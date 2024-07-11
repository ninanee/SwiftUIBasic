//
//  TextEditorSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//  TextEditor is for multi-lines

import SwiftUI

struct TextEditorSwiftUIView: View {
    
    @State var textEditorText: String = "This is the starting text"
    @State var saveText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .colorMultiply(.gray)
                    .frame(height: 250)
                   
                Button {
                    saveText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(saveText)
                
                Spacer()
            }
            .padding()
            .background(Color.white)
            .navigationTitle("Text Editor")
        }
    }
}

#Preview {
    TextEditorSwiftUIView()
}
