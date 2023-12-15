import 'package:flutter/material.dart';

class ottse extends StatefulWidget {
  const ottse({super.key});

  @override
  State<ottse> createState() => _ottseState();
}

class _ottseState extends State<ottse> {
  bool light = true;
  bool light1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Download Quality'),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Download on WI-FI only'),
                Switch(
    // This bool value toggles the switch.
    value: light,
    activeColor: Colors.green,
    onChanged: (bool value) {
    // This is called when the user toggles the switch.
    setState(() {
    light = value;
    });
    },
    ),


              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
              Divider(color: Colors.black,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Parental controls'),
                  Switch(
                    // This bool value toggles the switch.
                    value: light1,
                    activeColor: Colors.green,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light1 = value;
                      });
                    },
                  ),
                ],
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('An OTP will be required to switch to an Adults profile'),
              ),
            ],),
          )
        ],
      ),
    );
  }
}
