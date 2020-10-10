import 'package:flutter/material.dart';
import 'package:food_ordering/textStyles.dart';


class CustomSemiTitle extends StatelessWidget{
  String text;

  CustomSemiTitle({@required this.text, semiTitleSize, semiTitleColor, semiTitleWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: semiTitleSize, color: semiTitleColor, fontWeight: semiTitleWeight,),);
  }
}