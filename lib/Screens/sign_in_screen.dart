import 'package:ecommars_app/Screens/forgot_password_Screen.dart';
import 'package:ecommars_app/Screens/home_page_screen.dart';
import 'package:ecommars_app/Screens/registerScreen.dart';
import 'package:ecommars_app/widget/button_app.dart';
import 'package:ecommars_app/widget/sup_title_text.dart';
import 'package:ecommars_app/widget/title_text.dart';

import 'package:flutter/material.dart';

import '../widget/sign_in_sochi_Button.dart';
import '../widget/text_fiel_app.dart';

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
                  TitleText(title: 'Welcome Back', colorText: Colors.black, fontSize: 30),
                  SupTitleText(title: 'Sign in with your email and password\n or continue with social media'),
                  const SizedBox(height: 60),
                  TextFieldApp(label: 'Email',hintText:  ' Enter your email',iconTextField:const Icon(Icons.email_outlined), ),
                   TextFieldApp(label: 'Password',hintText:  ' Enter your password',iconTextField:const Icon(Icons.lock_outline), ),
                  
                  Row(
                    children: [
                      Checkbox(
                          value: value,
                          onChanged: (set) {
                            setState(() {
                              set = value;
                            });
                          }),
                          SupTitleText(title: 'Remember me'),
                     
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
                    child: ButtonApp(onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HomePageScreen()),
                        );
                      },)
                  ),
                  const SizedBox(height: 70),
                  const SignInSochiButton(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SupTitleText(title: 'Din\'t have on account?'),
                     
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
