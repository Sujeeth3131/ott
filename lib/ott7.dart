import 'package:flutter/material.dart';
import 'package:newott/ott10subscribe.dart';
import 'package:newott/ott11logout.dart';
import 'package:newott/ott2.dart';
import 'package:newott/ott5.dart';
import 'package:newott/ott6.dart';
import 'package:newott/ott8name.dart';
import 'package:newott/ott9watchlist.dart';
import 'package:newott/otthelp.dart';
import 'package:newott/ottsettings.dart';

class ott7 extends StatefulWidget {
  const ott7({super.key});

  @override
  State<ott7> createState() => _ott7State();
}

class _ott7State extends State<ott7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: Colors.blueAccent,
        child: Column(
          children: [
            Container(height: 100,
                width: 50,
                child: Center(child: CircleAvatar(backgroundImage: AssetImage('pi/pppp.png'),))),
            Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('sujeeth'),
                Text('9876543210'),
              ],
            ),
            ListTile(
              leading:Icon(Icons.person),
              title: Text('Kids'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(

              title: Text('News'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(color: Colors.black,),

            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const ott8()));
                });
              },
              child: ListTile(
                title: Text('Edit profile'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            GestureDetector (
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ott9()));
                });
              },
              child: ListTile(

                title: Text('Watchlist'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ott6()));
                });
              },
              child: ListTile(

                title: Text('Downloads'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ottse()));
                });
              },
              child: ListTile(

                title: Text('Settings'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(color: Colors.black,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ott10()));
                });
              },
              child: ListTile(

                title: Text('Subscribe Now'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            ListTile(

              title: Text('preference'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(color: Colors.black,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const otth()));
                });
              },
              child: ListTile(

                title: Text('Help & Legal'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const ott11()));
                });
              },
              child: ListTile(

                title: Text('Logout'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
