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

3. **Run the App:**
- Open the project in Xcode.
- Select a simulator or a connected iOS device.
- Click the Run button (or press Cmd + R) to build and run the app.

## Usage 🚀
1. **Enter City Name:**
- Open the app and enter the name of a city in the text field.

2. **Fetch Weather:**
- Tap the Get Weather button to fetch the current weather data for the entered city.

3. **View Weather Details:**
- The app will display the city's name, temperature, humidity, weather description, and an icon representing the current weather conditions.

## Dependencies 📦
- SwiftUI: Used for building the user interface.
- OpenWeatherMap API: Provides the weather data.

## Contributing 🤝
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

1. Fork the repository.

2. Create a new branch (git checkout -b feature/YourFeatureName).

3. Commit your changes (git commit -m 'Add some feature').

4. Push to the branch (git push origin feature/YourFeatureName).

5. Open a pull request.

## Acknowledgments 🙏
1. OpenWeatherMap for providing the weather data API.

2. Apple for providing SwiftUI and the tools to build iOS apps.

## Developer 👨‍💻
**Vikramaditya Gaikwad**

- GitHub: VikramadityaG

- Email: em24mtech14008@iith.ac.in

Enjoy using the Weather App! 🌦️

