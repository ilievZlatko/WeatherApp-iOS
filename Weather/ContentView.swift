//
//  ContentView.swift
//  Weather
//
//  Created by Zlatko Iliev on 11.07.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(
                    imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                    temperature: 76
                )
    
                HStack(spacing: 26) {
                    ForEach(weekDays, id: \.self) { day in
                        WeatherDayView(
                            dayOfWeek: day.dayOfWeek,
                            imageName: day.imageName,
                            temperature: day.temperature
                        )
                    }
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(
                        title: "Change Day Time",
                        textColor: isNight ? .white : .blue,
                        backgroundColor: isNight ? .black : .white
                    )
                }
                 
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
