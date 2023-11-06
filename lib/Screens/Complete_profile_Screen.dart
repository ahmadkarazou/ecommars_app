
import 'package:ecommars_app/Screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

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
                  const Text(
                    'Complete Profile',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'muli',
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Complete your details or continue ',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w100,
                        color: Colors.grey),
                  ),
                  const Text(
                    'with social media',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w100,
                        color: Colors.grey),
                  ),
                  const SizedBox(height: 60),
                  const TextField(
                    decoration: InputDecoration(
                      counter: Text(''),
                      contentPadding: EdgeInsets.all(15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: ' Enter your first name',
                      suffixIcon: Icon(Icons.account_circle_outlined),
                      label: Text('First Name'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      counter: Text(''),
                      contentPadding: EdgeInsets.all(15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: ' Enter your last name',
                      suffixIcon: Icon(Icons.account_circle_outlined),
                      label: Text('Last Name'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      counter: Text(''),
                      contentPadding: EdgeInsets.all(15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Enter your phone numper',
                      suffixIcon: Icon(Icons.phone_android_sharp),
                      label: Text('Phone Number'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      counter: Text(''),
                      contentPadding: EdgeInsets.all(15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Enter your phone adderss',
                      suffixIcon: Icon(Icons.location_on_outlined),
                      label: Text('Address'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 50),
                  const Text(
                    'By continuing your confirm thal you agree',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w100,
                        color: Colors.grey),
                   ),
                  const Text(
                    'with our Term amd Condition',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.w100,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
