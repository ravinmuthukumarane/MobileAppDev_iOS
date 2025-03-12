//
//  calculatorview.swift
//  propertywrapper
//
//  Created by user271408 on 3/11/25.
//

import SwiftUI

struct calculatorview: View {
    
    @StateObject var viewModel = ViewModel()
    
    @State var number1: String = ""
    @State var number2: String = ""
    @State var result: Double = 0.0
    
    var body: some View {
        Text("Welcome to Calculator")
        VStack {
            TextField("Number One", text: $number1)
                .textFieldStyle(.roundedBorder)
            
            TextField("Number Two", text: $number2)
                .textFieldStyle(.roundedBorder)
            
            Text("Resul is : \(viewModel.result)" )
            
            HStack {
                Button("+") {
                    viewModel.addition(number1: number1, number2: number2)
                }
                .tint(.blue)
                
                Button("-") {
                    viewModel.substraction(number1: number1, number2: number2)
                }
                .tint(.red)
                
                Button("*") {
                    viewModel.multiplication(number1: number1, number2: number2)
                }
                .tint(.green)
                
                Button("/") {
                    viewModel.divition(number1: number1, number2: number2)
                }
                .tint(.yellow)
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

#Preview {
    calculatorview()
}
