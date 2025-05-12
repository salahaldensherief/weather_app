import 'package:flutter/material.dart';
import 'package:weather_app/presentation/views/widgets/custom_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),

      ),
      body: CustomTextField(),
    );
  }
}

