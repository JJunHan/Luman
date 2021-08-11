import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:luman/Welcome/buttons.dart';
import 'package:luman/Backgrounds/mainloginbg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luman/constants.dart';
import 'package:luman/Welcome/input_field.dart';
import 'package:luman/Welcome/password_field.dart';
import 'package:luman/Welcome/accountchecker.dart';
import 'package:luman/Welcome/signupentry.dart';
import 'package:luman/Pages/homepageentry.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String Username = "";
    String Password = "";
    return Background(
      innerPage: true,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.25),
            /*
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            */
            RoundedInputField(
              hintText: "Username",
              onChanged: (text) {
                Username = text;
              },
            ),
            RoundedPasswordField(
              onChanged: (text) {
                Password = text;
              },
            ),
            RoundedButton(
              text: "Login",
              textColor: Colors.black,
              color: kWhite,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage(
                        username:
                            Username, //pass the user name into the entry page
                      );
                    },
                  ),
                );
                /* // This to be replaced later to send data over to DB
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Text('User & Password'),
                          content: Text(Username + "\n" + Password),
                        ));
                        */
              },
            ),
            SizedBox(height: size.height * 0.03),
            VerifyAccount(
              login:
                  true, //default is true = need to send him to sign up thats why we in login page
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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
