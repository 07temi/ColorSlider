//
//  ContentView.swift
//  ColorSlider
//
//  Created by Артем Черненко on 18.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    //private var myColor = Color.init(red: 0.1, green: 0, blue: 0)
    var body: some View {
        VStack{
            ColorView(color: .init(Color.RGBColorSpace.sRGB,
                                   red: redSliderValue / 255,
                                   green: greenSliderValue / 255,
                                   blue: blueSliderValue / 255,
                                   opacity: 1))
            
            HStack{
                ColorSlider(value: $redSliderValue, lineColor: .red)
                //ColorTextField(textField: $sliderValue)
                    //передать в текстовое поле
            }
            HStack{
                ColorSlider(value: $greenSliderValue, lineColor: .green)
//                ColorTextField()
            }
            HStack{
                ColorSlider(value: $blueSliderValue, lineColor: .blue)
//                ColorTextField()
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
