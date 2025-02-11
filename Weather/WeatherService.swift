//
//  WeatherService.swift
//  Weather
//
//  Created by Vikramaditya Gaikwad on 11/02/25.
//


import Foundation

struct APIErrorResponse: Codable {
    let cod: String
    let message: String
}

class WeatherService {
    let apiKey = "" //add your api key
    let baseURL = "https://api.openweathermap.org/data/2.5/weather"

    func fetchWeather(city: String, completion: @escaping (WeatherResponse?) -> Void) {
        let urlString = "\(baseURL)?q=\(city)&appid=\(apiKey)&units=metric"
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Failed to fetch data:", error?.localizedDescription ?? "Unknown error")
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }

            do {
                
                if let errorResponse = try? JSONDecoder().decode(APIErrorResponse.self, from: data) {
                    print("API Error:", errorResponse.message)
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                    return
                }

             
                let result = try JSONDecoder().decode(WeatherResponse.self, from: data)
                DispatchQueue.main.async {
                    completion(result)
                }
            } catch {
                print("Decoding error:", error)
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }.resume()
    }
}

