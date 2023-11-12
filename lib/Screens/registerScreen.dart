
import 'package:ecommars_app/Screens/Complete_profile_Screen.dart';
import 'package:ecommars_app/widget/button_app.dart';
import 'package:ecommars_app/widget/sign_in_sochi_Button.dart';
import 'package:ecommars_app/widget/sup_title_text.dart';
import 'package:ecommars_app/widget/text_fiel_app.dart';
import 'package:ecommars_app/widget/title_text.dart';
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
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  TitleText(title:  'Register Account', colorText:  Colors.black,fontSize: 36),
               SupTitleText(title:  'Complete your details or continue \n with social media'),
             
              const SizedBox(height: 60),
              TextFieldApp(hintText: ' Enter your email', label: 'Email', iconTextField:const Icon(Icons.email_outlined)),
              TextFieldApp(hintText: ' Enter your password', label:'Password', iconTextField:const  Icon(Icons.lock_outline)),
             TextFieldApp(hintText: ' Re-enter your password', label:'Confirm Password', iconTextField:const  Icon(Icons.lock_outline)),
              
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ButtonApp(onPressed:  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompleteProfileScreen()),
                    );
                  },)
              
              ),
              const SizedBox(height: 70),
            const SignInSochiButton(),
              const SizedBox(height: 50),
              SupTitleText(title: 'By continuing your confirm that you agree'),
              
            ],
          ),
        ),
      ),
    ),)
    ,
    );
  }
}
