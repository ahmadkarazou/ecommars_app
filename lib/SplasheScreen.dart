import 'package:ecommars_app/registerScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  SizedBox(height: 20),
              Text(
                'TOKOTO',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.orange,
                    fontFamily: 'muli',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Text(
                'welcome to Tokoto, Let\'s shop!',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.w100,
                    color: Colors.grey),
              ),
              SizedBox(height: 40),
              Image(
                image: AssetImage('assets/image/splash_1.png'),
                width: 300,
              ),
              SizedBox(height: 90),
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
                      style: TextStyle(fontSize: 20
                      ,color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Colors.orange),
                        fixedSize: MaterialStatePropertyAll(
                        Size.fromWidth(double.infinity))),),

              ),


            ],
          ),
        ),
      ),
    ),)
    );
  }
}
