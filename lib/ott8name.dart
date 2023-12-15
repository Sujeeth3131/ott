import 'package:flutter/material.dart';

class ott8 extends StatefulWidget {
  const ott8({super.key});

  @override
  State<ott8> createState() => _ott8State();
}

class _ott8State extends State<ott8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    // leading: Icon(Icons.arrow_back_ios_new),
     title: Text('Profile'),
   ),

     body: Column(crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Column(crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(height: 100,
                 width: 50,
                 child: Center(child: CircleAvatar(backgroundImage: AssetImage('pi/pppp.png'),))),
           ],
         ),
         Text('Name'),
         Text('sujeeth'),
         Divider(color: Colors.black,),
         Text('Mobile number'),
         Text('+919****9876'),
         Divider(color: Colors.black,),
         Text('Gender'),
         Row(
           children: [
             SizedBox(height: 20,width: 30,
               child: FloatingActionButton(
                 backgroundColor: Colors.amberAccent,
                 onPressed: () {},
                 child: Icon(
                   Icons.male,
                   size: 20,
                   color: Colors.black,
                 ),


               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Male'),
             ),
             SizedBox(height: 20,width: 30,
               child: FloatingActionButton(
                 backgroundColor: Colors.amberAccent,
                 onPressed: () {},
                 child: Icon(
                   Icons.female,
                   size: 20,
                   color: Colors.black,
                 ),


               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Female'),
             ),
             SizedBox(height: 20,width: 30,
               child: FloatingActionButton(
                 backgroundColor: Colors.amberAccent,
                 onPressed: () {},
                 child: Icon(
                   Icons.circle,
                   size: 10,
                   color: Colors.yellow,
                 ),


               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Others'),
             ),
             Divider(),
           ],

         ),
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Date of Birth'),
             ),
             SizedBox(height: 20,width: 30,
               child: FloatingActionButton(
                 backgroundColor: Colors.black,
                 onPressed: () {},
                 child: Icon(
                   Icons.calendar_month,
                   size: 10,
                   color: Colors.yellow,
                 ),


               ),
             ),
           ],
         ),
         Column(crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('Preference'),
             Text('Launguage & Content'),
           ],
         ),
       ],

     ),


    );
  }
}
