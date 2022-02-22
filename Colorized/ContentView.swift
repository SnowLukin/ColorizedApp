//
//  ContentView.swift
//  Colorized
//
//  Created by Snow Lukin on 18.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red: Double = 50
    @State private var green: Double = 100
    @State private var blue: Double = 200
    
    @FocusState private var focusedField: Bool
    
    var body: some View {
        ZStack {
            Color("darkGrayCustomColor")
                .ignoresSafeArea()
            
            VStack {
                ColorView(red: red, green: green, blue: blue)
                    .padding(.bottom, 40)
                VStack {
                    getColorNameText(colorName: "Red:")
                    SliderView(sliderValue: $red, color: .red)
                    customDivider
                    getColorNameText(colorName: "Green:")
                    SliderView(sliderValue: $green, color: .green)
                    customDivider
                    getColorNameText(colorName: "Blue:")
                    SliderView(sliderValue: $blue, color: .blue)
                }
                .focused($focusedField)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            focusedField = false
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ContentView()
        }
        .previewDevice("iPhone SE (2nd generation)")
    }
}

extension ContentView {
    
    private var customDivider: some View {
        Divider()
            .background(Color("grayCustomColor"))
            .padding([.top, .bottom], 20)
    }
    
    private func getColorNameText(colorName: String) -> some View {
        HStack {
            Text(colorName)
                .fontWeight(.bold)
                .font(.title2)
                .foregroundColor(Color("blueCustomColor"))
            Spacer()
        }
    }
    
}
