//
//  CaculatorViewModel.swift
//  SwiftUI_practice
//
//  Created by 이수민 on 6/9/24.
//

import SwiftUI
import Combine

class CaculatorViewModel : ObservableObject {
    @Published var caculateResult: String = "0"
    private var previousInput: String = ""
    private var currentResult: String = ""
    private var operationInput : ButtonType.Operation?
    
    func buttonTapped(button: ButtonType) {
        switch button {
        case .digit(let digit):
            previousInput = digit.rawValue
            if operationInput != nil {
                operate(operation: operationInput)
                operationInput = nil
            } else {
                caculateResult = previousInput
            }
            if currentResult.isEmpty {
                currentResult = previousInput
            }
        case .operation(let operation):
            operationInput = operation

        case .utility(let utility):
            print("Utility")
        }
    }
    
    func operate(operation : ButtonType.Operation?) {
        let result : Double
        guard let newValue = Double(previousInput), let currentValue = Double(currentResult) else {
            return
        }
        switch operation{
        case .add:
            result = newValue + currentValue
        case .divide:
            result = currentValue / newValue
        case .multiply:
            result = newValue * currentValue
        case .subtract:
            result = currentValue - newValue
        case .equal:
            result = currentValue
        case .none:
            result = currentValue
        }
        currentResult = String(result)
        caculateResult = currentResult
    }
   
}
