//
//  ButtonType.swift
//  SwiftUI_practice
//
//  Created by 이수민 on 5/28/24.
//

import SwiftUI

enum ButtonType: String, CaseIterable {
    case ac = "AC"
    case plusMinus = "+/-"
    case percent = "%"
    case divide = "÷"
    case multiply = "X"
    case subtract = "-"
    case add = "+"
    case equal = "="
    case decimal = "."
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    
    var backgroundColor: Color {
        switch self {
        case .ac, .plusMinus, .percent:
            return Color.white
        case .divide, .multiply, .subtract, .add, .equal:
            return Color.orange
        default:
            return Color.gray
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .ac, .plusMinus, .percent:
            return Color.black
        default:
            return Color.white
        }
    }
    
    static var rows: [[ButtonType]] {
        [
            [.ac, .plusMinus, .percent, .divide],
            [.seven, .eight, .nine, .multiply],
            [.four, .five, .six, .subtract],
            [.one, .two, .three, .add],
            [.zero, .decimal, .equal]
        ]
    }
}
