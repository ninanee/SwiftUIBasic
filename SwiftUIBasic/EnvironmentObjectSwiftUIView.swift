//
//  EnvironmentObjectSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-11.
//

import SwiftUI

//StateObject
//ObervedObject
//EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append("iPhone")
        self.dataArray.append(contentsOf: ["Ipad", "IMac", "Apple Watch"])
    }
}

struct EnvironmentObjectSwiftUIView: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { data in
                    
                    NavigationLink {
                        DetailView(selectedItem: data)
                    } label: {
                        Text(data)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        // have access to the viewmodel, no need extra code
        .environmentObject(viewModel)
    }
}


struct DetailView: View{
    
    let selectedItem: String
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            NavigationLink(
                destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
            
            
 
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            //foreGround
            ScrollView {
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
       
    }
}
#Preview {
    EnvironmentObjectSwiftUIView()
//    DetailView(selectedItem: "ioh")
    
//    FinalView()
}
