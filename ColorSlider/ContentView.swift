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
    @State private var showAlert = false
    
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
                    .onSubmit {
                        redSliderValue = checkValue(value: redSliderValue)
                    }
                    .alert("error", isPresented: $showAlert) {
                        Button("Ok", action: {} )
                    } message: {
                        Text("out of range")
                    }
            }
            HStack{
                ColorSlider(value: $greenSliderValue, lineColor: .green)
                ColorTextField(textField: $greenSliderValue)
                    .onSubmit {
                        greenSliderValue = checkValue(value: greenSliderValue)
                    }
            }
            HStack{
                ColorSlider(value: $blueSliderValue, lineColor: .blue)
                ColorTextField(textField: $blueSliderValue)
                    .onSubmit {
                        blueSliderValue = checkValue(value: blueSliderValue)
                    }
            }
        }
    }
    
    private func checkValue(value: Double) -> Double {
        if value > 255 {
            showAlert.toggle()
        }
        return 255
    }
}


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
