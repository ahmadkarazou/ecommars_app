import 'package:flutter/material.dart';


class ButtonApp extends StatelessWidget {
   ButtonApp({
    required this.onPressed,
     this.textButton='Continue',
    super.key,
  });
   VoidCallback onPressed;
   String textButton;
  

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
       textButton,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}