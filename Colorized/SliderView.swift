//
//  SliderView.swift
//  Colorized
//
//  Created by Snow Lukin on 22.02.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            ValueTextView(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(Color("grayCustomColor"))
                .onChange(of: sliderValue) { isOnFocus in
                    textValue = "\(lround(isOnFocus))"
                }
            ValueTFView(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            SliderView(sliderValue: .constant(100), color: .red)
        }
        .previewDevice("iPhone 13 Pro")
    }
}

