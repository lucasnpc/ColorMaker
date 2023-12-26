//
//  ContentView.swift
//  ColorMaker
//
//  Created by Lucas Lopes on 25/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var red = 0.0
    @State var green =  0.0
    @State var blue = 0.0
    var body: some View {
        VStack {
            HStack(alignment: .top){
                Text("Red").foregroundColor(.red).frame(width: 50)
                Slider(value: $red, in: 0...1).frame(width: 250)
            }
            HStack{
                Text("Green").foregroundColor(.green).frame(width: 50)
                Slider(value: $green, in: 0...1).frame(width: 250)
            }
            HStack{
                Text("Blue").foregroundColor(.blue).frame(width: 50)
                Slider(value: $blue, in: 0...1).frame(width: 250)
            }
            Rectangle().fill(Color(red: CGFloat(red), green:CGFloat(green), blue: CGFloat(blue)).opacity(1)).cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        }.padding().background(Color(Color.black))
    }
}

#Preview {
    ContentView()
}
