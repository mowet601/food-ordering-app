import 'package:flutter/material.dart';
import 'package:food_ordering/textStyles.dart';


// ignore: must_be_immutable
class CustomTitle extends StatelessWidget{
  String text;
  CustomTitle({@required this.text, titleSize, titleColor, titleWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: titleSize, color: titleColor, fontWeight: titleWeight,),);
  }
}