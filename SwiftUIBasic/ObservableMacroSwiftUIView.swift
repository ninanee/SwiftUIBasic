//
//  ObservableMacroSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-16.
//

//@StateObject  -> USE THIS ON CREATION /INIT
//@ObservableObject -> USE THIS FOR SUBVIEW

// change the ObservableObject to @Observable Macro 


import SwiftUI

@Observable class ObservableViewModel {
//class ObservableViewModel: ObservableObject {
    
//    @Published var title: String = "Some Title"
    var title: String = "Some Title"

    
}

struct ObservableMacroSwiftUIView: View {
    
//    @StateObject private var viewModel = ObservableViewModel()
    @State private var viewModel = ObservableViewModel()


    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "new title"
            }
            
            SomeThirdView()
            
            SomeChildView(viewModel: viewModel)
        }
//        .environmentObject(viewModel)
        .environment(viewModel)

    }
}

struct SomeChildView: View {
    
//    @ObservedObject var viewModel: ObservableViewModel
    @Bindable var viewModel: ObservableViewModel

    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "ndfdfdadfad"
        }
    }
}

struct SomeThirdView: View {
    
//    @EnvironmentObject var viewModel: ObservableViewModel

    @Environment(ObservableViewModel.self) var viewModel: ObservableViewModel

    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "new tiereadad"
        }
    }
}

#Preview {
    ObservableMacroSwiftUIView()
}
