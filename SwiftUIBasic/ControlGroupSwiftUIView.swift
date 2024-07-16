//
//  ControlGroupSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-16.
//

import SwiftUI

struct ControlGroupSwiftUIView: View {
    var body: some View {
        Menu("My Menu") {
            
            ControlGroup {
                Button("Ni") {
                    
                }
                Button("Ho") {
                    
                }
                
            }
            Button("One") {
                
            }
            
            Button("Two") {
                
            }
            
            Button("Three") {
                
            }
            Menu("My Menu") {
                Button("Two") {
                    
                }
                
                Button("Three") {
                    
                }
            }
        }
    }
}

#Preview {
    ControlGroupSwiftUIView()
}
