//
//  ContentView.swift
//  SwiftUI_practice
//
//  Created by 이수민 on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        numberRow
        
    }
   
    @ViewBuilder
    var numberRow: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack{
                Spacer()
                HStack{
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("AC")
                            .modifier(whiteButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("+/-")
                            .modifier(whiteButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("%")
                            .modifier(whiteButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("÷")
                            .modifier(whiteButton())
                    })
                }
                
                HStack{
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("7")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("8")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("9")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("X")
                            .modifier(orangeButton())
                    })
                }
                
                HStack{
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("4")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("5")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("6")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("-")
                            .modifier(orangeButton())
                    })
                }
                
                HStack{
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("3")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("2")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("1")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("+")
                            .modifier(orangeButton())
                    })
                }
                
                HStack{
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("0")
                            .frame(width: 160, height: 80, alignment: .leading)
                            .background(.gray)
                            .cornerRadius(40)
                            .font(.system(size: 28))
                            .foregroundColor(.white)
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text(".")
                            .modifier(grayButton())
                    })
                    Button(action:
                            {self.buttonTapped()},
                           label: {
                        Text("=")
                            .modifier(orangeButton())
                    })
                }
            }
        }
        
        
    }
    
    func buttonTapped() {
        print("tapped button")
    }
}

#Preview {
    ContentView()
}

struct whiteButton : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 80, height: 80)
            .background(.white)
            .cornerRadius(40)
            .font(.system(size: 28))
            .foregroundColor(.black)
    }
}

struct grayButton : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 80, height: 80)
            .background(.gray)
            .cornerRadius(40)
            .font(.system(size: 28))
            .foregroundColor(.white)
    }
}

struct orangeButton : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 80, height: 80)
            .background(.orange)
            .cornerRadius(40)
            .font(.system(size: 28))
            .foregroundColor(.white)
    }
}
