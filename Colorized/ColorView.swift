//
//  ColorView.swift
//  Colorized
//
//  Created by Snow Lukin on 22.02.2022.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(20)
            .frame(height: 170)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("blueCustomColor"), lineWidth: 4)
            }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 50, green: 100, blue: 200)
            .previewDevice("iPhone 13 Pro")
    }
}
