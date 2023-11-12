import 'package:ecommars_app/Screens/sign_in_screen.dart';
import 'package:ecommars_app/widget/button_app.dart';
import 'package:ecommars_app/widget/sup_title_text.dart';
import 'package:ecommars_app/widget/text_fiel_app.dart';
import 'package:ecommars_app/widget/title_text.dart';
import 'package:flutter/material.dart';

class OTPVeificationScreen extends StatefulWidget {
  const OTPVeificationScreen({super.key});

  @override
  State<OTPVeificationScreen> createState() => _OTPVeificationScreenState();
}

class _OTPVeificationScreenState extends State<OTPVeificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                TitleText(title: 'OTP Verification', colorText: Colors.black, fontSize: 30),
               SupTitleText(title: 'We send your code to +1 898 860 ***'),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SupTitleText(title:  'This code will expired in '),
                   
                    const Text(
                      '00:13',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 200,
                      child:TextFieldApp(hintText: null, label: null, iconTextField: null),
                       
                    ),
                    SizedBox(
                      width: 70,
                      height: 200,
                     child:TextFieldApp(hintText: null, label: null, iconTextField: null),
                    ),
                    SizedBox(
                      width: 70,
                      height: 200,
                      child:TextFieldApp(hintText: null, label: null, iconTextField: null),
                    ),
                    SizedBox(
                      width: 70,
                      height: 200,
                      child:TextFieldApp(hintText: null, label: null, iconTextField: null),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ButtonApp(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()),
                      );
                    },)
                 
                ),
               const SizedBox(height: 40),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend OTP Code',
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
