import 'package:flutter/material.dart';
import 'package:luman/Welcome/buttons.dart';
import 'package:luman/Backgrounds/mainloginbg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luman/constants.dart';
import 'package:luman/Welcome/input_field.dart';
import 'package:luman/Welcome/password_field.dart';
import 'package:luman/Welcome/email_field.dart';
import 'package:luman/Welcome/accountchecker.dart';
import 'package:luman/Welcome/loginentry.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String Username = "";
    String Password = "";
    String Email = "";
    return Background(
      innerPage: true,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.25),
            RoundedemailField(
              hintText: "Email",
              onChanged: (value) {
                Email = value;
              },
            ),
            RoundedInputField(
              hintText: "Username",
              onChanged: (value) {
                Username = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                Password = value;
              },
            ),
            RoundedButton(
              text: "Sign up",
              textColor: Colors.black,
              color: kWhite,
              press: () {
                // This to be replaced later to send data over to DB
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Text('User & Password & Email'),
                          content:
                              Text(Username + "\n" + Password + "\n" + Email),
                        ));
              },
            ),
            SizedBox(height: size.height * 0.03),
            VerifyAccount(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
