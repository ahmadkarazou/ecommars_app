
import 'package:ecommars_app/Screens/Complete_profile_Screen.dart';
import 'package:ecommars_app/Screens/registerScreen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

bool value = false;

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'muli',
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'please enter your email and we will send ',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w100,
                        color: Colors.grey),
                  ),
                  const Text(
                    'you a link to return to your account',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w100,
                        color: Colors.grey),
                  ),
                  const SizedBox(height: 70),
                  const TextField(
                    decoration: InputDecoration(
                      counter: Text(''),
                      contentPadding: EdgeInsets.all(15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: ' Enter your email',
                      suffixIcon: Icon(Icons.email_outlined),
                      label: Text('Email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                  const SizedBox(height: 70),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CompleteProfileScreen()),
                        );
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.orange),
                          fixedSize: MaterialStatePropertyAll(
                              Size.fromWidth(double.infinity))),
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Din\'t have on account?',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Muli',
                            color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.w100,
                              color: Colors.orange),
                        ),
                      ),
                    ],
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
