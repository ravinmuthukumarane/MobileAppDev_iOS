//
//  viewmodel.swift
//  propertywrapper
//
//  Created by user271408 on 3/11/25.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var result: Double = 0
    func addition (number1: String, number2: String) {
        guard let x = Double(number1), let y = Double(number2) else {return }
        result = x + y
    }
    func substraction (number1: String, number2: String)  {
        guard let x = Double(number1), let y = Double(number2) else {return }
        result = x - y
    }
    func multiplication (number1: String, number2: String) {
        guard let x = Double(number1), let y = Double(number2) else {return }
        result = x * y
    }
    func divition (number1: String, number2: String) {
        guard let x = Double(number1), let y = Double(number2) else {return }
        result =  x / y
    }
}
