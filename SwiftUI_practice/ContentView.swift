//
//  ContentView.swift
//  SwiftUI_practice
//
//  Created by 이수민 on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CaculatorViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                ResultView(result: viewModel.caculateResult)
                numberRow
            }
        }
    }

    var numberRow: some View {
        VStack(spacing: 10) {
            ForEach(ButtonType.rows, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(row, id: \.self) { button in
                        ButtonView(type: button) {
                            viewModel.buttonTapped(button: button)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
