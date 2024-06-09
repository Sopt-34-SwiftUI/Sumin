//
//  ButtonType.swift
//  SwiftUI_practice
//
//  Created by 이수민 on 5/28/24.
//

import SwiftUI

enum ButtonType: Hashable {
    case digit(Digit)
   case operation(Operation)
   case utility(Utility)

   enum Digit: String, CaseIterable {
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
       case decimal = "."
   }

   enum Operation: String, CaseIterable {
       case divide = "÷"
       case multiply = "X"
       case subtract = "-"
       case add = "+"
       case equal = "="
   }

   enum Utility: String, CaseIterable {
       case ac = "AC"
       case plusMinus = "+/-"
       case percent = "%"
   }
    
    var backgroundColor: Color {
        switch self {
        case .utility(let utility):
            return Color.white
        case .operation(let operation):
            return Color.orange
        default:
            return Color.gray
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .utility(let utility):
            return Color.black
        default:
            return Color.white
        }
    }
    
    static var rows: [[ButtonType]] {
        [
            [.utility(.ac), .utility(.plusMinus), .utility(.percent), .operation(.divide)],
            [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiply)],
            [.digit(.four), .digit(.five), .digit(.six), .operation(.subtract)],
            [.digit(.one), .digit(.two), .digit(.three), .operation(.add)],
            [.digit(.zero), .digit(.decimal), .operation(.equal)]
        ]
    }
}
