//
//  Day.swift
//  Weather
//
//  Created by Zlatko Iliev on 11.07.22.
//

import Foundation

struct Day: Hashable {
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
}

let weekDays = [
    Day(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76),
    Day(dayOfWeek: "WED", imageName: "cloud.fill", temperature: 64),
    Day(dayOfWeek: "THU", imageName: "sun.max.fill", temperature: 80),
    Day(dayOfWeek: "FRI", imageName: "cloud.sun.rain.fill", temperature: 60),
    Day(dayOfWeek: "SAT", imageName: "sun.max.fill", temperature: 84)
]
