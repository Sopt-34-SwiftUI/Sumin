//  ButtonType.swift
//  SwiftUI_practice
//
//  Created by 이수민 on 5/28/24.
//

import SwiftUI

enum ButtonType {
    case grayButton
    case orangeButton
    case whiteButton

    var backgroundColor: Color {
        switch self {
        case .grayButton:
            return Color.gray
        case .orangeButton:
            return Color.orange
        case .whiteButton:
            return Color.white
        }
    }

    var foregroundColor: Color {
        switch self {
        case .grayButton, .orangeButton:
            return Color.white
        case .whiteButton:
            return Color.black
        }
    }

    var titles: [String] {
        switch self {
        case .grayButton:
            return ["9", "8", "7", "6", "5", "4", "3", "2", "1", "0", "."]
        case .orangeButton:
            return ["÷", "X", "-", "+", "="]
        case .whiteButton:
            return ["AC", "+/-", "%"]
        }
    }
}
