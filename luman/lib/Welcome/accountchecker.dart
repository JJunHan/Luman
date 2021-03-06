import 'package:flutter/material.dart';
import 'package:luman/constants.dart';

class VerifyAccount extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const VerifyAccount({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account? " : "Already have an Account? ",
          style: TextStyle(color: accountCheckColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: accountCheckColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
