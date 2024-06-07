//
//  ContentView.swift
//  SwiftUI_practice
//
//  Created by 이수민 on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack{
                Spacer()
                numberRow
            }
        }
    }
        
    @ViewBuilder
    var numberRow: some View {
        HStack{
            makeWhiteButton(text: "AC"){
                self.buttonTapped(text: "AC")
            }
            makeWhiteButton(text: "+/-"){
                self.buttonTapped(text: "+/-")
            }
            makeWhiteButton(text: "%"){
                self.buttonTapped(text: "%")
            }
            makeOrangeButton(text: "÷"){
                self.buttonTapped(text: "÷")
            }
        }
        
        HStack{
            makeGrayButton(text: "9"){
                self.buttonTapped(text: "9")
            }
            makeGrayButton(text: "8"){
                self.buttonTapped(text: "8")
            }
            makeGrayButton(text: "7"){
                self.buttonTapped(text: "7")
            }
            makeOrangeButton(text: "X"){
                self.buttonTapped(text: "X")
            }
        }
        
        HStack{
            makeGrayButton(text: "6"){
                self.buttonTapped(text: "6")
            }
            makeGrayButton(text: "5"){
                self.buttonTapped(text: "5")
            }
            makeGrayButton(text: "4"){
                self.buttonTapped(text: "4")
            }
            makeOrangeButton(text: "-"){
                self.buttonTapped(text: "-")
            }
        }
        
        HStack{
            makeGrayButton(text: "3"){
                self.buttonTapped(text: "3")
            }
            makeGrayButton(text: "2"){
                self.buttonTapped(text: "2")
            }
            makeGrayButton(text: "1"){
                self.buttonTapped(text: "1")
            }
            makeOrangeButton(text: "+"){
                self.buttonTapped(text: "+")
            }
        }
        
        HStack{
            Button(action:
                    {self.buttonTapped(text: "0")},
                   label: {
                Text("0")
                    .frame(width: 160, height: 80, alignment: .leading)
                    .background(.gray)
                    .cornerRadius(40)
                    .font(.system(size: 28))
                    .foregroundColor(.white)
            })
            makeGrayButton(text: "."){
                self.buttonTapped(text: ".")
            }
            makeOrangeButton(text: "="){
                self.buttonTapped(text: "=")
            }
        }
    }
    
    func buttonTapped(text: String) {
        print(text)
    }
    
    func makeCaculateButton(text: Any, action: @escaping () -> Void, backgroundColor: UIColor, foregroundColor: UIColor) -> some View {
        Button(action: action) {
            Text(String(describing: text))
                .modifier(caculateButton(backgroundColor: backgroundColor, foregroundColor: foregroundColor))
        }
    }

}

#Preview {
    ContentView()
}

struct caculateButton: ViewModifier {
    var backgroundColor : Color
    var foregroundColor : Color
    
    init(backgroundColor: UIColor, foregroundColor: UIColor) {
        self.backgroundColor = Color(backgroundColor)
        self.foregroundColor = Color(foregroundColor)
    }
    
    func body(content: Content) -> some View {
        content
            .frame(width: 80, height: 80)
            .background(backgroundColor)
            .cornerRadius(40)
            .font(.system(size: 28))
            .foregroundColor(foregroundColor)
    }
}
