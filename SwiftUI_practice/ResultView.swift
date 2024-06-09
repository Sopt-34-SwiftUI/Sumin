//
//  ResultView.swift
//  SwiftUI_practice
//
//  Created by 이수민 on 6/7/24.
//

import SwiftUI

struct ResultView: View {
    var result: String

    var body: some View {
        Text(result)
            .font(.system(size: 48))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
    }
}
