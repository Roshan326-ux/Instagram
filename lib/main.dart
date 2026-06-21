import 'package:flutter/material.dart';
import 'package:instagram_app/Screens/Splash/splashscreen.dart';
import 'package:instagram_app/Screens/login/loginscreen.dart';
import 'package:instagram_app/Screens/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
