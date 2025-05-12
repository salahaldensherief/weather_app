import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/views/search_view.dart';

import '../../cubits/get_weather_cubit.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Row(

          children: [
            Image.asset(
              'assets/images/—Pngtree—red push pin_13378485.png',
              width: 22,
            ),
            const SizedBox(width: 5),
            Text(
              weatherModel.cityName,
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchView(),));

              },
              icon: const Icon(Icons.search_rounded),
              color: Colors.white,
            ),
          ],
        ),


      ],
    );
  }
}
