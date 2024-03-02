//
//  firstCity.swift
//  SwiftUI Weather App
//
//  Created by Gökhan Uymur on 2.03.2024.
//

import SwiftUI

struct firstCity: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack{
                CityNameTextView(cityName: "Cupertino, CA")
                
                WeatherIconAndDegreeView(weatherIcon: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 7 : 15)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeak: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: isNight ? 5 : 10)
                    WeatherDayView(dayOfWeak: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: isNight ? 7 : 15)
                    WeatherDayView(dayOfWeak: "THU",
                                   imageName: "wind.snow",
                                   temperature: isNight ? -1 : 4)
                    WeatherDayView(dayOfWeak: "FRI",
                                   imageName: "snow",
                                   temperature: isNight ? -5 : 0)
                    WeatherDayView(dayOfWeak: "SAT",
                                   imageName: isNight ? "wind.snow" : "cloud.fill",
                                   temperature: isNight ? 1 : 3)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(buttonTitle: "Change the day", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}
