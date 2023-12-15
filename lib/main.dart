// import 'package:flutter/material.dart';
// import 'package:newott/ott1.dart';
// import 'package:newott/ott10subscribe.dart';
// import 'package:newott/ott11logout.dart';
// import 'package:newott/ott3.dart';
// import 'package:newott/ott4.dart';
// import 'package:newott/ott6.dart';
// import 'package:newott/ott9watchlist.dart';
// import 'package:newott/otthelp.dart';
// import 'package:newott/ottmovie.dart';
// import 'package:newott/ottsettings.dart';
// import 'package:newott/ottsports.dart';
// import 'package:newott/ottvideo.dart';
//
// import 'ott2.dart';
// import 'ott5.dart';
// import 'ott5navi.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ott1(),
//     );
//   }
//
//
// }


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:newott/ott1.dart';
import 'firebase/home.dart';
import 'firebase/login.dart';
import 'firebase/signUp.dart';
import 'firebase/splashscreen.dart';
import 'ott5.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCdA35Y-lK9ARyU0TJgr11xzBwslnEbcnc",
        appId: "1:566335880836:android:2773676beba77cb6148cd1",
        messagingSenderId: "566335880836",
        projectId: "sujee-7725e",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      home: ott5(),
      // routes: {
      //   '/': (context) =>
      //       SplashScreen(
      //     // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
      //     child: LoginPage(),
      //   ),
      //   '/login': (context) => LoginPage(),
      //   '/signUp': (context) => SignUpPage(),
      //   '/home': (context) => HomePage(),
      // },
    );
  }
}