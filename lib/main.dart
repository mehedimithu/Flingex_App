import 'package:flingex_app/screens/login/login_page.dart';
import 'package:flutter/material.dart';
import 'screens/signup/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flingex App',
      routes: {
        // '/': (context) => Splash(),
        '/': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        // '/home': (context) => HomePage(),
      },
    );
  }
}
