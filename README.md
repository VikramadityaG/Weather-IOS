# Weather App 🌦️

This is a simple iOS weather application developed using **SwiftUI** and the **OpenWeatherMap API**. The app allows users to enter a city name and fetch the current weather conditions, including temperature, humidity, and weather description.

---

## Features ✨

- **City Search**: Enter the name of a city to fetch its current weather data.
- **Weather Details**: View the city's name, temperature, humidity, and weather description.
- **Weather Icons**: Display weather icons based on the current weather conditions.
- **Dynamic Icon Loading**: Load weather icons from OpenWeatherMap's API.

---

## Requirements 📋

- **iOS 15.0** or later
- **Xcode 13.0** or later
- An **API key** from [OpenWeatherMap](https://openweathermap.org/)

---

## Installation 🛠️

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/VikramadityaG/Weather-IOS.git
   cd Weather-IOS
   ```
2. **Add API Key:**
- Open the WeatherService.swift file.
- Replace the empty string in the apiKey constant with your OpenWeatherMap API key:
  ```
  let apiKey = "your_api_key_here"
  ```
