
import 'package:ecommars_app/Screens/Complete_profile_Screen.dart';
import 'package:ecommars_app/Screens/registerScreen.dart';
import 'package:ecommars_app/widget/button_app.dart';
import 'package:ecommars_app/widget/sup_title_text.dart';
import 'package:ecommars_app/widget/text_fiel_app.dart';
import 'package:ecommars_app/widget/title_text.dart';
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
                  const SizedBox(height: 70),
                  TitleText(title:  'Forgot Password', colorText: Colors.black, fontSize: 30),
                  SupTitleText(title: 'please enter your email and we will send\n you a link to return to your account'),
                  const SizedBox(height: 70),
                  TextFieldApp(hintText: ' Enter your email',iconTextField:const Icon(Icons.email_outlined),label: 'Email', ),
                  
                  const SizedBox(height: 70),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ButtonApp(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CompleteProfileScreen()),
                        );
                      },)
                  ),
                  const SizedBox(height: 90),
                  
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
