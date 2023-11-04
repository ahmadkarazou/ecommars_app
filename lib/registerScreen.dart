import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text('Register Account'),
                  Text('Complete your details or continue '),
                  Text('with social media'),
                  TextField(
                    decoration: InputDecoration(

                      counter: Text(''),
                      contentPadding: EdgeInsets.all(15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: ' Enter your email',
                      suffixIcon:Icon(Icons.email_outlined) ,
                      label: Text('Email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(

                      counter: Text(''),
                      contentPadding: EdgeInsets.all(15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: ' Enter your password',
                      suffixIcon:Icon(Icons.lock_outline) ,
                      label: Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(

                      counter: Text(''),
                      contentPadding: EdgeInsets.all(15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: ' Re-enter your password',
                      suffixIcon:Icon(Icons.lock_outline) ,
                      label: Text('Confirm Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){},
                      // onPressed: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const RegisterScreen()),
                      //   );
                      // },
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
        ),
      ),
    );
  }
}
