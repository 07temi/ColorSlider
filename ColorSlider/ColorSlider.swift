//
//  Slider.swift
//  ColorSlider
//
//  Created by Артем Черненко on 18.02.2022.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    let lineColor: Color
    
    var body: some View {
        HStack{
            Text("\(lround(value))")
                .frame(width: 40, alignment: .leading)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(lineColor)
        }
        .padding(.horizontal)
    }
}
