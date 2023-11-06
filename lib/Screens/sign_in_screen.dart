import 'package:ecommars_app/Screens/forgot_password_Screen.dart';
import 'package:ecommars_app/Screens/registerScreen.dart';

import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

bool value = false;

class _SignInScreenState extends State<SignInScreen> {
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
                    'Welcome Back',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'muli',
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Sign in with your email and password ',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w100,
                        color: Colors.grey),
                  ),
                  const Text(
                    'or continue with social media',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w100,
                        color: Colors.grey),
                  ),
                  const SizedBox(height: 60),
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
                  const TextField(
                    decoration: InputDecoration(
                      counter: Text(''),
                      contentPadding: EdgeInsets.all(15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: ' Enter your password',
                      suffixIcon: Icon(Icons.lock_outline),
                      label: Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: value,
                          onChanged: (set) {
                            setState(() {
                              set = value;
                            });
                          }),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w100,
                            color: Colors.grey),
                      ),
                      const SizedBox(width: 80),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordScreen()));
                          },
                          child: const Text(
                            'Forgot password',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                fontFamily: 'Muli',
                                fontWeight: FontWeight.w100,
                                color: Colors.grey),
                          ))
                    ],
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      // onPressed: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const CompleteProfileScreen()),
                      //   );
                      //},
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.orange),
                          fixedSize: MaterialStatePropertyAll(
                              Size.fromWidth(double.infinity))),
                    ),
                  ),
                  const SizedBox(height: 70),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Image(
                          width: 20,
                          image: AssetImage('assets/image/logo-g.png'),
                        ),
                      ),
                      SizedBox(width: 20),
                      CircleAvatar(
                        child: Image(
                          width: 20,
                          image: AssetImage('assets/image/fasebook.png'),
                        ),
                      ),
                      SizedBox(width: 20),
                      CircleAvatar(
                        child: Image(
                          width: 20,
                          image: AssetImage('assets/image/twitter.png'),
                        ),
                      ),
                    ],
                  ),
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
                        child: const Text(
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
