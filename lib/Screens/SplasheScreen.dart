
import 'package:ecommars_app/Screens/registerScreen.dart';
import 'package:flutter/cupertino.dart';
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
              const Text(
                'TOKOTO',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.orange,
                    fontFamily: 'muli',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              const Text(
                'welcome to Tokoto, Let\'s shop!',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.w100,
                    color: Colors.grey),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: onpordImge(),
              ),
              const SizedBox(height: 40),
              SmoothPageIndicator(

                effect:  WormEffect(
                  //dotHeight: 14  ,
                  //dotWidth: 40,
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
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                    );
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orange),
                      fixedSize: MaterialStatePropertyAll(
                          Size.fromWidth(double.infinity))),
                ),
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
