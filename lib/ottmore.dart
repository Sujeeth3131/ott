import 'package:flutter/material.dart';

class ott extends StatelessWidget {
  const ott({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
         Image(image: AssetImage('pi/jpeg')),
        ],
      )
    );
  }
}
