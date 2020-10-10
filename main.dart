import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ordering/pages/home.dart';

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
  void initState(){
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Image(
              image: AssetImage('assets/images/themePic.jpg'),
              fit: BoxFit.fill,
              height: double.infinity,
              alignment: Alignment.center,
            ),
        )
    );
  }
}

