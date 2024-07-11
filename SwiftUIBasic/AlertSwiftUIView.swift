//
//  AlertSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-09.
//

import SwiftUI

struct AlertSwiftUIView: View {
    
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var showAlert: Bool = false
    @State var backgroundcolor: Color = Color.yellow
    @State var alertType: MyALert? = nil
    
    enum MyALert {
        case success
        case error
        
    }
    
    var body: some View {
        
        ZStack {
            backgroundcolor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Button(action: {
//                    alertTitle = "ERROR LOADING VIDEO"
//                    alertMessage = "The video could be not upload"
                    alertType = .error
                    showAlert.toggle()
                }, label: {
                    Text("Button1")
                })
                
                Button(action: {
//                    alertTitle = "Successfully uploaded video 🐒"
//                    alertMessage = "your video is now public"
                    alertType = .success
                    showAlert.toggle()
                }, label: {
                    Text("Button2")
                })
                
            
            }    .alert(isPresented: $showAlert, content: {
                //            Alert(title: Text("There was an error!"))
                            getAlert()
                    })
        }
        
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("There was an error!"))
        case .error:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundcolor = .green  }))
        default:
                   return Alert(title: Text("ERROR"))
        }
//        return  Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundcolor = .red
//            }),
//            secondaryButton: .cancel())
            
//            dismissButton: .default(Text("OK")))
    }
}

#Preview {
    AlertSwiftUIView()
}
