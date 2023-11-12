import 'package:flutter/material.dart';

class SignInSochiButton extends StatelessWidget {
  const SignInSochiButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}