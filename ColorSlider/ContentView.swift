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
        ZStack{
            Color.init(red: 0, green: 0.4, blue: 0.7)
                .ignoresSafeArea()
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
                            redSliderValue = checkValue(from: redSliderValue)
                        }
                    //что то так и не получилось отдельно это все оформить
                    //есть трудности с пониманием куда логику девать((
                    //по хорошему алерт разместить в в структуре тектового поля, но никак не получается
                    //очевидно что я чего то не понимаю
                        .alert("error", isPresented: $showAlert) {
                            Button("Ok", action: {} )
                        } message: {
                            Text("Out of range, max = 255")
                        }
                }
                HStack{
                    ColorSlider(value: $greenSliderValue, lineColor: .green)
                    ColorTextField(textField: $greenSliderValue)
                        .onSubmit {
                            greenSliderValue = checkValue(from: greenSliderValue)
                        }
                }
                HStack{
                    ColorSlider(value: $blueSliderValue, lineColor: .blue)
                    ColorTextField(textField: $blueSliderValue)
                        .onSubmit {
                            blueSliderValue = checkValue(from: blueSliderValue)
                        }
                }
            }
        }
    }
    
    private func checkValue(from: Double) -> Double {
        if from > 255 {
            showAlert.toggle()
        }
        return 255
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
