
import 'package:ecommars_app/Screens/Complete_profile_Screen.dart';
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
                const Text(
                'Register Account',
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
              const Text('with social media', style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.w100,
                  color: Colors.grey),),
              const SizedBox(height: 60),
              const TextField(
                decoration: InputDecoration(
                  counter: Text(''),
                  contentPadding: EdgeInsets.all(15),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: ' Enter your email',
                  suffixIcon: Icon(Icons.email_outlined),
                  label: Text('Email'),
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
                  hintText: ' Enter your password',
                  suffixIcon: Icon(Icons.lock_outline),
                  label: Text('Password'),
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
                  hintText: ' Re-enter your password',
                  suffixIcon: Icon(Icons.lock_outline),
                  label: Text('Confirm Password'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(width: 2)),
                ),
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompleteProfileScreen()),
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
              const SizedBox(height: 70),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image(
                      width: 20,
                      image: AssetImage('assets/image/logo-g.png'),
                    ),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    child: Image(
                      width: 20,
                      image: AssetImage('assets/image/fasebook.png'),
                    ),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    child: Image(
                      width: 20,
                      image: AssetImage('assets/image/twitter.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Text('By continuing your confirm thal you agree',
                   style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.w100,
                  color: Colors.grey),),
            ],
          ),
        ),
      ),
    ),)
    ,
    );
  }
}
