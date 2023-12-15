import 'dart:async';

import 'package:flutter/material.dart';

import 'ott2.dart';


class ott1 extends StatefulWidget {
  const ott1({super.key});

  @override
  State<ott1> createState() => _ott1State();
}

class _ott1State extends State<ott1> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                ott2()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Image.network('https://gifdb.com/images/high/cartoon-film-rolling-thdqy5zw8hf8ph87.gif')
    );
  }}
