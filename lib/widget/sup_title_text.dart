import 'package:flutter/material.dart';

class SupTitleText extends StatelessWidget {
  SupTitleText({
    required this.title,
    super.key,
  });
  String title;

  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      textAlign: TextAlign.center ,
      style: TextStyle(
          fontSize: 14,
          fontFamily: 'Muli',
          fontWeight: FontWeight.w100,
          color: Colors.grey),
    );
  }
}