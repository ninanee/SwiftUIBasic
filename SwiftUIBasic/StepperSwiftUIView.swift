//
//  StepperSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-10.
//

import SwiftUI

struct StepperSwiftUIView: View {
    
    @State var stepperValue: Int = 10
    @State var withIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + withIncrement
                       , height: 100)
            
            Stepper("Steper2") {
               incrementWith(amount: 100)
            } onDecrement: {
                incrementWith(amount: -100)
            }

        }
    }
    
    func incrementWith(amount: CGFloat) {
        withAnimation(.easeIn) {
            withIncrement += amount
        }
    }
}

#Preview {
    StepperSwiftUIView()
}
