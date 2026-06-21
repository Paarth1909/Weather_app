import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'weather_model.dart';
import 'weather_service.dart';
import 'package:intl/intl.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherService _weatherService = WeatherService(
    'e189825c728e4aa25b590f74421687dd',
  );
  Weather? _weather;

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  Future<void> fetchWeather() async {
    try {
      String cityName = await _weatherService.getCurrentCity();

      final weather = await _weatherService.getWeather(cityName);

      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print("ERROR: $e");
    }
  }

  String currentDate = DateFormat('EEEE, dd MMM yyyy').format(DateTime.now());

  String currentTime = DateFormat('hh:mm a').format(DateTime.now());

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return 'assets/Weather-sunny.json';

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/Weather-partly cloudy.json';
      case 'rain':
        return 'assets/Weather-rainy icon.json';
      case 'drizzle':
        return 'assets/Weather-partly shower.json';
      case 'thunderstorm':
        return 'assets/Weather-storm.json';
      case 'clear':
        return 'assets/Weather-sunny.json';
      case 'night':
        return 'assets/Weather-night.json';
      case 'cloudy night':
        return 'assets/Weather-cloudy(night).json';
      default:
        return 'assets/Weather-sunny.json';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,

        title: const Text("Weather App"),
      ),
      body: Center(
        child: _weather == null
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _weather!.cityName,
                    style: const TextStyle(fontSize: 40),
                  ),

                  Lottie.asset(getWeatherAnimation(_weather?.mainCondition)),

                  Text(currentDate, style: const TextStyle(fontSize: 25)),

                  Text(currentTime, style: const TextStyle(fontSize: 25)),

                  Text(
                    "${_weather!.temperature.round()}°C",
                    style: const TextStyle(fontSize: 40),
                  ),

                  Text(_weather?.mainCondition ?? ""),
                ],
              ),
      ),
    );
  }
}
