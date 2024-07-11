//
//  ViewModelSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct FruitModel:Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}


class FruitModelView: ObservableObject {
    
    @Published var fruitArray : [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruit()
    }
    func deletefruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
    func getFruit() {
        let fruit1 = FruitModel(name: "orange", count: 1)
        let fruit2 = FruitModel(name: "banana", count: 2)
        let fruit3 = FruitModel(name: "peach", count: 4)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
       
    }
}

// Mark:  if view changed , the @ObservableObject won't be changed but @StateObject will

//@StateObject  -> USE THIS ON CREATION /INIT
//@ObservableObject -> USE THIS FOR SUBVIEW

struct ViewModelSwiftUIView: View {
    
//    @State var fruitArray: [FruitModel] = [
//
//        FruitModel(name: "Apple", count: 5)
//    ]
    
    @StateObject var fruitViewModel: FruitModelView = FruitModelView()
    
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deletefruit)
                }
           
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: RandomScreen( fruitViewModel: fruitViewModel), label: {
                Image(systemName: "arrow.right").font(.title)
            })
            )

        }
        
    }
    

}
struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitModelView
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Go Back")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                })
            }
         
        }
    }
}
#Preview {
    ViewModelSwiftUIView()
}
