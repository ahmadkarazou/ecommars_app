import 'package:flutter/material.dart';


class ButtonApp extends StatelessWidget {
   ButtonApp({
    required this.onPressed,
    super.key,
  });
   VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Colors.deepOrange),
          fixedSize: MaterialStatePropertyAll(
              Size.fromWidth(double.infinity))),
      
      child: const Text(
        'Continue',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}