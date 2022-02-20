//
//  ColorTextField.swift
//  ColorSlider
//
//  Created by Артем Черненко on 18.02.2022.
//

import SwiftUI

struct ColorTextField: View {
    @Binding var textField: Double
    var body: some View {
        TextField("", value: $textField, format: .number)
            .frame(width: 45, height: 30)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            .padding(.trailing)
    }
}

//struct ColorTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorTextField()
//    }
//}
