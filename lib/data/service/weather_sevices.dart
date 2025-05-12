import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/data/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = 'a5e420f7cf8c4ceca8c115603251205';

  WeatherService(this.dio);
  Future<WeatherModel?> getCurrrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=10&aqi=no&alerts=no',
      );
      WeatherModel weatherModel = WeatherModel.fromjson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errmessage =
          e.response?.data['error']['message'] ??
          'opps there was an error try later';
      throw Exception(errmessage);
    } catch (e) {
      log(e.toString());
      throw Exception('opps there was an error try later');
    }
  }
}
