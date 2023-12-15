import 'package:flutter/material.dart';
import 'package:newott/ott7.dart';

class otth extends StatefulWidget {
  const otth({super.key});

  @override
  State<otth> createState() => _otthState();
}

class _otthState extends State<otth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.black54,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text('Help & Legal'),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Top Queries',style: TextStyle(color: Colors.blue,fontSize: 22),),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('On which device can i watch Cinema?',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
             Icon(Icons.arrow_forward_ios),
          ],),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Service Availability',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
               Icon(Icons.arrow_forward_ios),
            ],),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('I see the error code 8001,8002,8003',
    style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20),
              ),
               Icon(Icons.arrow_forward_ios),
            ],),
          ),
        ],
      ),
    );
  }
}
