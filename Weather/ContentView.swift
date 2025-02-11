//
//  ContentView.swift
//  Weather
//
//  Created by Vikramaditya Gaikwad on 11/02/25.
//

//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Vikramaditya Gaikwad on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    
    func weatherIcon(for conditionId: Int) -> String {
        switch conditionId {
        case 200...232: return "cloud.bolt.rain.fill"   // Thunderstorm
        case 300...321: return "cloud.drizzle.fill"    // Drizzle
        case 500...531: return "cloud.rain.fill"       // Rain
        case 600...622: return "snow"                 // Snow
        case 701...781: return "cloud.fog.fill"       // Fog/Mist
        case 800: return "sun.max.fill"               // Clear sky
        case 801...804: return "cloud.fill"           // Cloudy
        default: return "questionmark.circle.fill"    // Unknown condition
        }
    }

    @StateObject private var viewModel = WeatherViewModel()
    @State private var city: String = ""

    var body: some View {
        VStack {
            TextField("Enter city", text: $city)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                viewModel.fetchWeather(for: city)
            }) {
                Text("Get Weather")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            if let weather = viewModel.weather {
                VStack {
                    Text("City: \(weather.name)")
                        .font(.title)
                        .bold()

                    Text("Temperature: \(weather.main.temp, specifier: "%.1f")°C")
                        .font(.headline)

                    Text("Humidity: \(weather.main.humidity)%")
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    Text(weather.weather.first?.description.capitalized ?? "Unknown")
                        .font(.body)
                        .padding(.top, 5)

                    if let conditionId = weather.weather.first?.id, let icon = weather.weather.first?.icon {
                        VStack {
                            Image(systemName: weatherIcon(for: conditionId))
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.blue)

                            let iconURL = "https://openweathermap.org/img/wn/\(icon)@2x.png"
                            AsyncImage(url: URL(string: iconURL)) { phase in
                                    if let image = phase.image {
                                        image.resizable()
                                            .frame(width: 100, height: 100)
                                    } else if phase.error != nil {
                                        Text("⚠️ Image Load Failed")  
                                    } else {
                                        ProgressView()
                                    }
                                }
                        }
                    }
                }
                .padding()
            }

            Spacer()

            Text("Developed by Vikramaditya")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.bottom, 10)
        }
        .padding()
    }
}




#Preview {
    ContentView()
}
