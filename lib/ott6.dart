import 'package:flutter/material.dart';

class ott6 extends StatefulWidget {
  const ott6({super.key});

  @override
  State<ott6> createState() => _ott6State();
}

class _ott6State extends State<ott6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,width:520,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("pi/dddd.jpeg"),fit: BoxFit.fill,
            ),

            border: Border.all(color: Colors.red)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Downloads',style: TextStyle(color: Colors.blueAccent,fontSize: 26),),
            ),
            SizedBox(
              height: 150,

            ),
            Center(child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('No download available',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('Explore and download your favorite movies and shows to watch ',style: TextStyle(color: Colors.black,fontSize: 18),)),
                ),
                Center(
                    child: Text('watch on the go',style: TextStyle(color: Colors.black,fontSize: 20),)),
              ],

            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(

                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){}, child:Text('Go to Home')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
