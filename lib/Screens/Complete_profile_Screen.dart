
import 'package:ecommars_app/widget/button_app.dart';
import 'package:ecommars_app/widget/sup_title_text.dart';
import 'package:ecommars_app/widget/text_fiel_app.dart';
import 'package:ecommars_app/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'OTP_Verification_Screen.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
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
                  TitleText(title: 'Complete Profile', colorText:  Colors.black, fontSize: 30),
                 SupTitleText(title: 'Complete your details or continue\n with social media'),
                  
                  const SizedBox(height: 60),
                  TextFieldApp(hintText: ' Enter your first name', label:'First Name', iconTextField:const Icon(Icons.account_circle_outlined)),
                  TextFieldApp(hintText: ' Enter your last name', label:'Last Name', iconTextField:const Icon(Icons.account_circle_outlined)),
                   TextFieldApp(hintText: 'Enter your phone numper', label:'Phone Number', iconTextField:const Icon(Icons.phone_android_sharp)),
                 TextFieldApp(hintText: 'Enter your phone adderss', label:'Address', iconTextField:const Icon(Icons.location_on_outlined)),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ButtonApp(onPressed:  () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>const OTPVeificationScreen()),
                        );
                      },)
                  ),
                  const SizedBox(height: 50),
                  SupTitleText(title: 'By continuing your confirm thal you agree\n with our Term amd Condition'),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
