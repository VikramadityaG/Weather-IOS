//
//  WeatherModel.swift
//  Weather
//
//  Created by Vikramaditya Gaikwad on 11/02/25.
//

import Foundation

struct WeatherResponse: Codable {
    let name: String
    let main: Main
    let weather: [WeatherCondition]
}

struct Main: Codable {
    let temp: Double
    let humidity: Int
}

struct WeatherCondition: Codable {
    let id: Int  
    let main: String
    let description: String
    let icon: String
}

