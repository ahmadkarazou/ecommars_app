import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldApp extends StatelessWidget {
  TextFieldApp({
    this.hintText,
    this.label,
    this.iconTextField,
    super.key,
  });

  TextEditingController controlar = TextEditingController();
  String? hintText;
  String? label;
  Icon? iconTextField;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlar,

      decoration: InputDecoration(

        counter: const Text(''),
        contentPadding: const EdgeInsets.all(15),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
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
