import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ordering/colorScheme.dart';
import 'package:food_ordering/pages/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}


class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        loaderColor: white,
        seconds: 7,
        navigateAfterSeconds: new Home(),
        title: new Text('Welcome to "The Kitchen"',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: white,
          ),
        ),
        image: Image.asset("assets/icons/logo.png",),
      gradientBackground: LinearGradient(
        // Where the linear gradient begins and ends
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          // Colors are easy thanks to Flutter's Colors class.
          Colors.blueAccent[700],
          Colors.blue[600],
          Colors.blue[200],
        ],
      ),
        photoSize: 150,
    );
  }
}

