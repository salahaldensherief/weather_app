import 'package:flutter/material.dart';

List<Color> getWeatherBackgroundColors(int conditionCode) {
  if (conditionCode == 1000) {
    return [Color(0xffFFD54F), Color(0xff81D4FA), Color(0xff0288D1)]; // Sunny
  } else if (conditionCode == 1003 ||
      conditionCode == 1006 ||
      conditionCode == 1009) {
    return [Color(0xff90A4AE), Color(0xff78909C), Color(0xff607D8B)]; // Cloudy
  } else if (conditionCode >= 1063 && conditionCode <= 1201) {
    return [Color(0xffB0BEC5), Color(0xff546E7A), Color(0xff263238)]; // Rainy
  } else if (conditionCode >= 1210 && conditionCode <= 1225) {
    return [Color(0xffECEFF1), Color(0xffB0BEC5), Color(0xff90CAF9)]; // Snowy
  } else if (conditionCode >= 1273 && conditionCode <= 1282) {
    return [Color(0xff455A64), Color(0xff37474F), Color(0xff263238)]; // Thunder
  } else {
    return [Color(0xffCFD8DC), Color(0xffB0BEC5), Color(0xff78909C)]; // Default
  }
}
String getWeatherImage(int conditionCode) {
  if (conditionCode == 1000) {
    return 'assets/images/6.png';
  } else if (conditionCode == 1003 || conditionCode == 1006 || conditionCode == 1009) {
    return 'assets/images/5.png';
  } else if (conditionCode >= 1063 && conditionCode <= 1201) {
    return 'assets/images/2.png';
  } else if (conditionCode >= 1210 && conditionCode <= 1225) {
    return 'assets/images/4.png';
  } else if (conditionCode >= 1273 && conditionCode <= 1282) {
    return 'assets/images/1.png';
  } else {
    return 'assets/images/default.png';
  }
}