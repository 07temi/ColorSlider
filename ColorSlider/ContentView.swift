//
//  ContentView.swift
//  ColorSlider
//
//  Created by Артем Черненко on 18.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue: Double = 64
    @State private var greenSliderValue: Double = 128
    @State private var blueSliderValue: Double = 200
    
    var body: some View {
        VStack{
            ColorView(color: .init(Color.RGBColorSpace.sRGB,
                                   red: redSliderValue / 255,
                                   green: greenSliderValue / 255,
                                   blue: blueSliderValue / 255,
                                   opacity: 1))
            
            HStack{
                ColorSlider(value: $redSliderValue, lineColor: .red)
                ColorTextField(textField: $redSliderValue)
            }
            HStack{
                ColorSlider(value: $greenSliderValue, lineColor: .green)
                ColorTextField(textField: $greenSliderValue)
            }
            HStack{
                ColorSlider(value: $blueSliderValue, lineColor: .blue)
                ColorTextField(textField: $blueSliderValue)
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
