//
//  OnAppeaerSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct OnAppeaerSwiftUIView: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                
                LazyVStack {
                    ForEach((0..<50)) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = "Tgus us tge"
                }
            
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppeaerSwiftUIView()
}
