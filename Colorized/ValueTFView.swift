//
//  ValueTFView.swift
//  Colorized
//
//  Created by Snow Lukin on 22.02.2022.
//

import SwiftUI

struct ValueTFView: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            withAnimation {
                checkValue()
            }
        }
        .frame(width: 55, height: 30, alignment: .trailing)
        .background(Color("grayCustomColor"))
        .cornerRadius(7)
        .multilineTextAlignment(.center)
        .foregroundColor(Color("blueCustomColor"))
        .keyboardType(.decimalPad)
        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
            Text("Please use numbers and enter value from 0 to 255.")
        }
    }
}

extension ValueTFView {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}

struct SliderValueTF_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ValueTFView(textValue: .constant("128"), value: .constant(128.0))
        }
        .previewDevice("iPhone 13 Pro")
    }
}
