class Weather {
  final String cityName;
  final double temperature;
  final String description;
  final double windSpeed;
  final int humidity;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.windSpeed,
    required this.humidity,
  });

  // Método para mapear JSON a un objeto Weather
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'],
      description: json['weather'][0]['description'],
      windSpeed: json['wind']['speed'],
      humidity: json['main']['humidity'],
    );
  }
}
