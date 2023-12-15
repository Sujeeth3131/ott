import 'package:flutter/material.dart';

class ott11 extends StatelessWidget {
  const ott11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new),),
      body: Container(height: 500,width: 520,color: Colors.grey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Logout ?',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Are you sure you want to log out?',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: ElevatedButton(onPressed: (){}, child: Text('Log out'))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: ElevatedButton(onPressed: (){}, child: Text('Cancel'))),
            ),
          ],
        ),
      ),
    );
  }
}
