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
            .padding()
        
    }
}

//struct ColorView_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorView(color: .red)
//    }
//}
