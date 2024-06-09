//
//  ButtonView.swift
//  SwiftUI_practice
//
//  Created by 이수민 on 5/28/24.
//

import SwiftUI

struct ButtonView: View {
    let type: ButtonType
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(type.title)
                .frame(width: type == .digit(.zero) ? 160 : 80, height: 80)
                .background(type.backgroundColor)
                .cornerRadius(40)
                .font(.system(size: 28))
                .foregroundColor(type.foregroundColor)
        }
    }
}
