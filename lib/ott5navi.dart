import 'package:flutter/material.dart';
import 'package:newott/ott1.dart';
import 'package:newott/ott10subscribe.dart';
import 'package:newott/ott2.dart';
import 'package:newott/ott3.dart';
import 'package:newott/ott5.dart';
import 'package:newott/ott7.dart';
import 'package:newott/ott9watchlist.dart';
import 'package:newott/ottmovie.dart';
import 'package:newott/ottsports.dart';

import 'ott4.dart';


class bottomnavigation1 extends StatefulWidget {
  const bottomnavigation1({super.key});

  @override
  State<bottomnavigation1> createState() => _bottomnavigation1State();
}

class _bottomnavigation1State extends State<bottomnavigation1> {
  int val =0;
  final page=[
    ott5(),
    otts(),
    ott22(),
    ott9(),
    ott7(),
  ];
  void tab(index)
  {
    setState(() {
      val=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[val],
      bottomNavigationBar:BottomNavigationBar (items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.blue,),label: "Home",),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_handball_rounded,color: Colors.blue,),label: "Sports"),
        BottomNavigationBarItem(
            icon: Icon(Icons.movie_sharp,color: Colors.blue,),label: "Movies"),
        BottomNavigationBarItem(
            icon: Icon(Icons.tv_sharp,color: Colors.blue,),label: "TV Shows"),
        BottomNavigationBarItem(
            icon: Icon(Icons.more_vert_outlined,color: Colors.blue,),label: "More"),
      ],
        currentIndex: val,
        onTap: tab,

      ),

    );
  }
}

