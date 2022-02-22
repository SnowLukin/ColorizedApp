//
//  ValueTextView.swift
//  Colorized
//
//  Created by Snow Lukin on 22.02.2022.
//

import SwiftUI

struct ValueTextView: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .fontWeight(.bold)
            .frame(width: 35, alignment: .leading)
            .foregroundColor(Color("blueCustomColor"))
    }
}

struct SliderValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ValueTextView(value: 128)
        }
        .previewDevice("iPhone 13 Pro")
    }
}
