//
//  GridsSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-16.
//

import SwiftUI

struct GridsSwiftUIView: View {
    var body: some View {
//        Grid(alignment: .center, horizontalSpacing: 10, verticalSpacing: 10) {
//            cell(item: 1)
//            cell(item: 2)
//            cell(item: 3)
//            
//            GridRow {
//                cell(item: 5)
//                cell(item: 6)
//                cell(item: 7)
//            }
//        }
        Grid(alignment: .center, horizontalSpacing: 20, verticalSpacing: 40) {
            ForEach(0..<4) {rowIndex in
                GridRow {
                    ForEach(0..<4) { columIndex in
                        let cellNumber = (rowIndex * 4) + (columIndex + 1)
                        
                        if cellNumber == 7 {
                            EmptyView()
                        } else {
                            cell(item: cellNumber)
                            
                            //how many column that number 6 can take
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
//                                .gridCellAnchor(.trailing)
                                .gridColumnAlignment( cellNumber == 1 ? .trailing : .center)
                        }
                    }
                }
            }
        }
    }
    
    private func cell(item: Int) -> some View {
        Text("\(item)")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridsSwiftUIView()
}
