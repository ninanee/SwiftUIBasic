//
//  SheetSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-08.
//

import SwiftUI

struct SheetSwiftUIView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            
            //don't add conditional logic in using sheet
            
            //Method 1: sheet
//            .sheet(isPresented: $showSheet, content: {
            //don't add conditional logic in using sheet
//                SecondScreen()
//            })
            
//            .fullScreenCover(isPresented: $showSheet, content: {
//                //don't add conditional logic in using sheet
//                SecondScreen()
            
            
            //Method 2 -- Transition ---  usefule one
            if showSheet {
                SecondScreen(shownewScreen: $showSheet)
                    .padding(.top, 100)
                    .transition(.move(edge: .bottom))
                    .animation(.spring(), value: 1)
            }
              
            //Method3 -- Animation offset
            
//            SecondScreen(shownewScreen: $showSheet)
//                .padding(.top, 100)
//                .offset(y: showSheet ? 0: UIScreen.main.bounds.height)
//                .animation(.spring, value: 1)
        }
       
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var shownewScreen: Bool
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                shownewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        
        }
    }
}

#Preview {
    SheetSwiftUIView()
}
