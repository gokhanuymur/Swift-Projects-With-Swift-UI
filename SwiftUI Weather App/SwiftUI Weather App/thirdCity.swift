//
//  thirdCity.swift
//  SwiftUI Weather App
//
//  Created by Gökhan Uymur on 2.03.2024.
//

import SwiftUI

struct thidCity: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack{
                CityNameTextView(cityName: "Newyork City, NY")
                
                WeatherIconAndDegreeView(weatherIcon: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 7 : 15)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeak: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: isNight ? 2 : 8)
                    WeatherDayView(dayOfWeak: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: isNight ? 5 : 10)
                    WeatherDayView(dayOfWeak: "THU",
                                   imageName: "wind.snow",
                                   temperature: isNight ? -2 : 5)
                    WeatherDayView(dayOfWeak: "FRI",
                                   imageName: "snow",
                                   temperature: isNight ? 3 : 1)
                    WeatherDayView(dayOfWeak: "SAT",
                                   imageName: isNight ? "wind.snow" : "cloud.fill",
                                   temperature: isNight ? 2 : 4)
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

