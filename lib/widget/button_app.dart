import 'package:flutter/material.dart';


class ButtonApp extends StatelessWidget {
   ButtonApp({
    required this.onPressed,
     this.ss='Continue',
    super.key,
  });
   VoidCallback onPressed;
   String ss;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Colors.deepOrange),
          fixedSize: MaterialStatePropertyAll(
              Size.fromWidth(double.infinity))),
      
      child:  Text(
       ss,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}