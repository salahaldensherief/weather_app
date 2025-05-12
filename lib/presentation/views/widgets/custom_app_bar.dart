import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset('assets/images/—Pngtree—red push pin_13378485.png',
              width: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text('Egypt' ,style: TextStyle(color: Colors.white),)
          ],
        ),
        Text('Good Morning',style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
