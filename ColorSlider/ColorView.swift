//
//  ColorView.swift
//  ColorSlider
//
//  Created by Артем Черненко on 19.02.2022.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    var body: some View {
        Rectangle()
            .frame(height: 100)
            .foregroundColor(color)
            .cornerRadius(20)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 5))
            .padding()
    }
}
