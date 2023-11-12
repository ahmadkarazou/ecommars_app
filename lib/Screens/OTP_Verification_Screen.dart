import 'package:ecommars_app/Screens/sign_in_screen.dart';
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
                SizedBox(height: 80),
                Text(
                  'OTP Verification',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'We send your code to +1 898 860 ***',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'This code will expired in ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '00:13',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          counterStyle: TextStyle(fontSize: 30),
                          counter: Text(''),
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide: BorderSide(width: 2)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      height: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          counter: Text(''),
                          counterStyle: TextStyle(fontSize: 30),
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide: BorderSide(width: 2)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      height: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          counter: Text(''),
                          counterStyle: TextStyle(fontSize: 30),
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide: BorderSide(width: 2)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      height: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          counter: Text(''),
                          counterStyle: TextStyle(fontSize: 50),
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide: BorderSide(width: 2)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()),
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
                SizedBox(height: 40),
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
