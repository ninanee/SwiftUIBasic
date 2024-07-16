//
//  ResizableSheetsSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-15.
//

import SwiftUI

struct ResizableSheetsSwiftUIView: View {
    
    @State var showsheet: Bool = false
    
    var body: some View {
        Button("Click ME") {
            showsheet.toggle()
        }
        .sheet(isPresented: $showsheet, content: {
            MyNextView()
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.hidden)
                .interactiveDismissDisabled()
        })
    }
}

struct MyNextView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Hello world")
        }
    }
}

#Preview {
    ResizableSheetsSwiftUIView()
}
