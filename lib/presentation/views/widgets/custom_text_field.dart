import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onSubmitted});
 final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: TextField(
onSubmitted: onSubmitted,
          decoration: InputDecoration(
            labelText: 'Search',
            suffixIcon: Icon(Icons.search_rounded),
            hintText: 'Enter city name',
            border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.black,
                
              )
            )
          ),
        ),
      ),
    );
  }
}