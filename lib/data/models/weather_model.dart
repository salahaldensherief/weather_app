class WeatherModel {
  final String cityName;
  final String date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;
  final String sunrise;
  final String sunset;

  WeatherModel({
    required this.sunrise,
    required this.sunset,
    required this.cityName,
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
  });
  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: json['current']['last_updated'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      sunrise: json['forecast']['forecastday'][0]['astro']['sunrise'],
      sunset:json['forecast']['forecastday'][0]['astro']['sunset'],

    );
  }
}
