import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/cubits/get_weather_cubit.dart';
import 'package:weather_app/presentation/views/widgets/custom_app_bar.dart';

import '../../core/utils/weather_background_helper.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xffCFD8DC),
        statusBarIconBrightness: Brightness.light,
      ),
    );
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: getWeatherBackgroundColors(weatherModel.conditionCode),
              stops: [0.0, 0.50, 1.0],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BuildAppBar(),
                Column(
                  children: [
                    Image.asset(
                      getWeatherImage(weatherModel.conditionCode),
                      height: 400,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      weatherModel.temp.round().toString(),
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      weatherModel.weatherCondition,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                       'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/11.png', height: 40),
                        Text(
                          'Sunrise\n${weatherModel.sunrise}',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    Container(
                      width: 1, // سمك الخط
                      height: 40, // طول الخط
                      color: Colors.white70, // لون الخط
                      margin: EdgeInsets.symmetric(vertical: 10), // مسافة حول الخط
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/12.png', height: 40),
                        Text(
                          'Sunset\n${weatherModel.sunset}',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/13.png', height: 30),
                        Text(
                          'Temp Max\n${weatherModel.maxTemp.round()}',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 8), // إضافة مسافة صغيرة
                      ],
                    ),
                    Container(
                      width: 1, // سمك الخط
                      height: 40, // طول الخط
                      color: Colors.white70, // لون الخط
                      margin: EdgeInsets.symmetric(vertical: 10), // مسافة حول الخط
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/14.png', height: 30),
                        Text(
                          'Temp Min\n${weatherModel.minTemp.round()}',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 3), // إضافة مسافة صغيرة
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
