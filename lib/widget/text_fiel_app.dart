
import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
   TextFieldApp({
    this.hintText,
    this.label,
     this.iconTextField,
    super.key,
  });
  String? hintText;
  String ?label;
  Icon? iconTextField;


  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        counter: const Text(''),
        contentPadding: const EdgeInsets.all(15),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText:hintText??"",
        suffixIcon: iconTextField,
        label: Text(label!),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(width: 2)),
      ),
    );
  }
}