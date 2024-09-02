import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherDetail extends StatelessWidget {
  final Weather weather;

  WeatherDetail({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(weather.cityName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Temperature: ${weather.temperature}°C', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Weather: ${weather.description}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Wind Speed: ${weather.windSpeed} m/s', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Humidity: ${weather.humidity}%', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
