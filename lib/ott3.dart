import 'package:flutter/material.dart';

class ott3 extends StatefulWidget {
  const ott3({super.key});

  @override
  State<ott3> createState() => _ott3State();
}

class _ott3State extends State<ott3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("pi/ppi.jpg"),fit: BoxFit.fill,
          ),

        ),
        child: Column(
          children: [
            Text('SIGN UP '),
            SizedBox(height: 200,),
            Container(
              height: 450,
              width: 250,
              color: Colors.white.withOpacity(0.5),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        decoration: InputDecoration( prefixIcon:Icon(Icons.face)
                            ,hintText: "Enter your name",
                            border: OutlineInputBorder())),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(decoration: InputDecoration(

                        hintText: "Enter your Email",
                        border: OutlineInputBorder())),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(decoration: InputDecoration(

                        hintText: "Enter your Phone number",
                        border: OutlineInputBorder())),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(decoration: InputDecoration(

                        hintText: "Enter your password",
                        border: OutlineInputBorder())),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){}, child: Text('SIGN UP')),



                  ),
                  RichText(text:TextSpan(
                      children: [
                        TextSpan(text:'Already have an account?',style: TextStyle(color: Colors.black) ),
                        TextSpan(text: ' Login ',style: TextStyle(color: Colors.blueAccent))]
                  ),


                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
