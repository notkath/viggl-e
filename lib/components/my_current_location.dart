import 'package:flutter/material.dart';

class MyCurrentLoctaion extends StatelessWidget {
  const MyCurrentLoctaion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Deliver Now'),
        Row(
          children: [
            //address
            Text('Address here'),
            //drop down menu
            Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
      ],
    );
  }
}
