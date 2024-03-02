//
//  WeatherButton.swift
//  SwiftUI Weather App
//
//  Created by Gökhan Uymur on 2.03.2024.
//

import SwiftUI

struct WeeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            
    }
}

struct WeeatherButton_Preview: PreviewProvider {
    static var previews: some View {
        WeeatherButton(title: "Test Label",
                      textColor: .white,
                      backgroundColor: .blue)
        
    }
}
