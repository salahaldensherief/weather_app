import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/get_weather_cubit.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset('assets/images/—Pngtree—red push pin_13378485.png',
              width: 22,
            ),
            SizedBox(
              width: 5,
            ),
            Text(weatherModel.cityName ,style: TextStyle(
                fontSize: 20,
                color: Colors.white),)
          ],
        ),
        Text('Good Morning',style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
