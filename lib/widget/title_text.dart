import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
   TitleText({
    required this.title,
     required this.colorText,
     required this.fontSize,
    super.key,
  });
  String title;
  Color colorText;
  double fontSize;


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: fontSize,
          color:colorText,
          fontFamily: 'muli',
          fontWeight: FontWeight.bold),
    );
  }
}