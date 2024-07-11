//
//  DataPickerSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct DataPickerSwiftUIView: View {
    
    @State var selectData: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter : DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .long
        
        return formatter
    }
   
    var body: some View {
        
        VStack {
            Text("SELECTED DATE IS: ")
            Text(dateFormatter.string(from: selectData))
                .font(.title)
            
            DatePicker("Select a date", selection:  $selectData, in: startingDate...endingDate)
            
            DatePicker("Select a data", selection: $selectData)
                .accentColor(Color.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
    //                GraphicalDatePickerStyle()
    //                WheelDatePickerStyle()
                )
        }
        
       
    }
}

#Preview {
    DataPickerSwiftUIView()
}
