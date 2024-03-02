//
//  ContentView.swift
//  SwiftUI Weather App
//
//  Created by Gökhan Uymur on 1.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            TabView {
                firstCity()
                    //.badge(2)
                    .tabItem {
                        Label("First City", systemImage: "1.circle.fill")
                                                }
                secondCity()
                    .tabItem {
                        Label("Second City", systemImage: "2.circle.fill")
                    }
                thidCity()
                    .tabItem {
                        Label("Third City", systemImage: "3.circle.fill")
                    }
                }
            .tint(.blue)
            .onAppear() {
                UITabBar.appearance().backgroundColor = .white
            }
            }
        }
    }


#Preview {
    ContentView()
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
///        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
///                       startPoint: .topLeading,
///                       endPoint: .bottomTrailing)
///        .ignoresSafeArea()
        ///        ios 16
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityNameTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding(.bottom)
    }
}

struct WeatherIconAndDegreeView: View {
    
    var weatherIcon: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: weatherIcon)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}

struct WeatherDayView: View {
    
    var dayOfWeak: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        
        VStack{
            Text(dayOfWeak)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)")
                .font(.system(size: 16))
                .foregroundStyle(.white)
        }
    }
}

struct WeatherButton: View {
    
    var buttonTitle: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(buttonTitle)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
    }
}

