import 'package:ecommars_app/Screens/home_page_screen.dart';
import 'package:ecommars_app/model/API.dart';
import 'package:ecommars_app/widget/button_app.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/image/success.png'),
          Container(
            margin: EdgeInsets.all(18),
            width: double.infinity,
            height: 50,
            child: ButtonApp(onPressed: ()async {
              await  Api(). futchProducts();
              if(mounted) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageScreen(),
                  ));
              }
            }),
          ),
        ],
      ),
    ));
  }
}
