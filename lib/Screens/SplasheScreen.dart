
import 'package:ecommars_app/Screens/registerScreen.dart';

import 'package:ecommars_app/widget/button_app.dart';
import 'package:ecommars_app/widget/sup_title_text.dart';
import 'package:ecommars_app/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

final List<String> img = [
  'assets/image/splash_1.png',
  'assets/image/splash_2.png',
  'assets/image/splash_3.png',
];
var controller = PageController();

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),
              TitleText(title: 'TOKOTO',colorText: Colors.deepOrange ,fontSize: 40),
              const SizedBox(height: 40),
              SupTitleText(title: 'welcome to Tokoto, Let\'s shop!'),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: onpordImge(),
              ),
              const SizedBox(height: 40),
              SmoothPageIndicator(

                effect:  const WormEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Colors.orange
                ),
                controller: controller,
                count: img.length,

              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ButtonApp(onPressed:
                 () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const RegisterScreen()),
        );
      }, ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget onpordImge() {
    return PageView.builder(
        controller: controller,
        itemCount: img.length,
        itemBuilder: (context, index) {
          return Image(image: AssetImage(img[index]));
        });
  }
}
