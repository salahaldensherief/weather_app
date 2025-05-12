part of 'get_weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class GetWeatherInitial extends WeatherState {}
final class NoWeatherState extends WeatherState {}
final class WeatherLoadedState extends WeatherState {
 final WeatherModel weatherModel;


  WeatherLoadedState(this.weatherModel);
}
final class WeatherFailureState extends WeatherState {
  final String errmessage;

  WeatherFailureState(this.errmessage);
}
