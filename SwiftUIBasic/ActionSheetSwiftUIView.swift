//
//  ActionSheetSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-09.
//

import SwiftUI

struct ActionSheetSwiftUIView: View {
    
    enum ActionSheetOption {
        case isMypost
        case isOtherPost
    }
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOption = .isOtherPost
    
    var body: some View {
//        Button("Click me"){
//            showActionSheet.toggle()
//        }
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
           
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
        let button3: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("This is the title"),
            message: Text("This is the message"),
            buttons: [button1, button1, button2, button3]
        )
    }
}

#Preview {
    ActionSheetSwiftUIView()
}
