import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/cubits/get_weather_cubit.dart';
import 'package:weather_app/presentation/views/widgets/custom_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),

      ),
      body: CustomTextField(onSubmitted: (value){
        var getWeatherCubit =  BlocProvider.of<GetWeatherCubit>(context);
        getWeatherCubit.getWeather(cityName: value);
        Navigator.of(context).pop();

      },),
    );
  }
}

