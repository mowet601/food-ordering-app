import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ordering/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ביס ראשון',
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),

    );
  }
}

