import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text('Register Account'),
                  Text('Complete your details or continue '),
                  Text('with social media'),
                  TextField(
                    decoration: InputDecoration(
                      counter: Text(''),
                      floatingLabelBehavior:FloatingLabelBehavior.always,
                      counterText:' Enter your email',
                      label: Text('      Email'),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(width: 2)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
