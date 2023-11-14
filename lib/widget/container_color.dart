import 'package:flutter/material.dart';
class ContainerColor extends StatelessWidget {
  ContainerColor({
    this.color,
    this.colorsBorder,
    super.key,
  });

  Color? colorsBorder;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: colorsBorder!),
          borderRadius: BorderRadius.circular(50)),
      width: 50,
      height: 50,
      child: TextButton(
        onPressed: () {},
        child: CircleAvatar(
          backgroundColor: color,
        ),
      ),
    );
  }
}
