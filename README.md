# 🌦️ Weather App

A beautiful and responsive Flutter Weather Application that provides real-time weather information using the OpenWeather API. Users can search for any city worldwide and get current weather details including temperature, humidity, wind speed, and weather conditions.

## 🚀 Features

* 🌍 Search weather by city name
* 🌡️ Real-time temperature updates
* ☁️ Weather condition display (Clear, Rainy, Cloudy, etc.)
* 💧 Humidity information
* 🌬️ Wind speed tracking
* 🌅 Dynamic weather icons
* 📱 Responsive and modern UI
* ⚡ Fast API integration with OpenWeather

## 📸 Screenshots

Add your screenshots here:

```text
assets/screenshots/home_screen.png
assets/screenshots/weather_details.png
```

## 🛠️ Tech Stack

### Frontend

* Flutter
* Dart

### API

* OpenWeather API

### Networking

* HTTP Package

## 📂 Project Structure

```text
lib/
│
├── models/
│   └── weather_model.dart
│
├── services/
│   └── weather_service.dart
│
├── screens/
│   └── home_screen.dart
│
├── widgets/
│   └── weather_card.dart
│
└── main.dart
```

## 🔗 API Used

This project uses the OpenWeather API to fetch weather data.

Example API Endpoint:

```text
https://api.openweathermap.org/data/2.5/weather?q={CITY_NAME}&appid={API_KEY}&units=metric
```

## 🔑 Getting an API Key

1. Create an account on OpenWeather.
2. Generate an API Key.
3. Replace the placeholder key in your project:

```dart
const String apiKey = "YOUR_OPENWEATHER_API_KEY";
```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter

  http: ^latest_version
```

## ▶️ Installation

Clone the repository:

```bash
git clone https://github.com/your-username/weather-app.git
```

Navigate to the project directory:

```bash
cd weather-app
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

## 💡 How It Works

1. User enters a city name.
2. The app sends a request to the OpenWeather API.
3. API returns weather data in JSON format.
4. The app parses the response.
5. Weather information is displayed in a clean and user-friendly interface.

## 📊 Weather Information Displayed

* 🌡️ Temperature
* 🤗 Feels Like Temperature
* ☁️ Weather Condition
* 💧 Humidity
* 🌬️ Wind Speed
* 📍 City Name
* 🌅 Weather Icon

## 🎯 Learning Outcomes

This project demonstrates:

* REST API Integration
* JSON Parsing
* HTTP Requests in Flutter
* State Management
* Error Handling
* Asynchronous Programming
* Responsive UI Design

## 🔮 Future Enhancements

* 📍 Current Location Weather
* 🗓️ 7-Day Weather Forecast
* 🌙 Dark Mode
* ⭐ Favorite Cities
* 🌐 Multiple Language Support
* 📈 Hourly Forecast
* 🔔 Weather Alerts

## 👨‍💻 Author

**Parth Rastogi**

BCA Student | Flutter Developer | API Integration Enthusiast

## 📜 License

This project is licensed under the MIT License.

---

