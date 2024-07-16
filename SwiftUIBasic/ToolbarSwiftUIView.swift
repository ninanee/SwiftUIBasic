//
//  ToolbarSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-15.
//

import SwiftUI

struct ToolbarSwiftUIView: View {
    
    @State var text: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
                    Text("HEY  🧚🏼")
                        .foregroundStyle(.white)
                    
                    ForEach(0..<10) { _ in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(width:200, height: 200)
                    }
                }
                
            }
            .navigationTitle("TOOLBAR")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "gear")
                        .foregroundColor(.red)
                }
            }
            
//            .toolbar(.hidden, for: .navigationBar)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    
                }
                
                Button("Screen 2") {
                    
                }
            }
        }
    }
}

#Preview {
    ToolbarSwiftUIView()
}
