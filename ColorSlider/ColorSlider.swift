//
//  Slider.swift
//  ColorSlider
//
//  Created by Артем Черненко on 18.02.2022.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    //@State private var sliderValue = Double.random(in: 0...255)
    let lineColor: Color
    
    var body: some View {
        HStack{
            Text("0")
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(lineColor)
            
            Text("255")
        }
        .padding(.horizontal)
    }
}

//struct Slider_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorSlider(setColor: .blue)
//    }
//}
