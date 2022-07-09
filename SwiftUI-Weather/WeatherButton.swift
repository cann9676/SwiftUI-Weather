//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Chelsea Hannah on 7/9/22.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

//If a view is going to be used throughout an app like a button, it is ok to push to its own file.
