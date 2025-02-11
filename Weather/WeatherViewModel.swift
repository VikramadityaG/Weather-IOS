//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Vikramaditya Gaikwad on 11/02/25.
//


import Foundation

class WeatherViewModel: ObservableObject {
    @Published var weather: WeatherResponse?
    private let weatherService = WeatherService()

    func fetchWeather(for city: String) {
        weatherService.fetchWeather(city: city) { [weak self] response in
            DispatchQueue.main.async {  
                self?.weather = response
            }
        }
    }
}

