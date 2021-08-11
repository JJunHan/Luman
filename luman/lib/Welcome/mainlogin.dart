import 'package:flutter/material.dart';
import 'package:luman/Backgrounds/mainloginbg.dart';
import 'package:flutter_svg/svg.dart'; //to use svg images
import 'package:luman/Welcome/buttons.dart';
import 'package:luman/Welcome/loginentry.dart';
import 'package:luman/constants.dart';
import 'package:toggle_bar/toggle_bar.dart';
import 'package:luman/Welcome/signupentry.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> labels = ["Light", "Dark"];
    // This size provide us total height and width of our screen
    return Background(
      innerPage: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.55),
            /*
            Image.asset(
              "assets/icons/logo.png",
              //width: size.width,
              //height: size.height,
              //fit: BoxFit.fill,
            ),
            */
            //SizedBox(height: size.height * 0.01),
            /*
            SvgPicture.asset(
              "assets/icons/law.svg",
              height: size.height * 0.05,
            ),
            */
            RoundedButton(
              text: "Login",
              textColor: Colors.black,
              color: kWhite,
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
            RoundedButton(
              text: "Sign up",
              textColor: Colors.black,
              color: kWhite,
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
            SizedBox(height: size.height * 0.02),
            /*
            ToggleBar(
                labels: labels,
                backgroundColor: Colors.grey[800],
                onSelectionUpdated: (index) {
                  index == "light" ? lightmode = false : lightmode = true;
                }),
            */
            /*
            Stack(
              // Stack the paint and words tgt to make it outlined
              children: <Widget>[
                Text(
                  "Where Lawyers are Humans",
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontFamily: "Courier",
                    fontSize: 18,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = Colors.white,
                  ),
                ),
                Text(
                  "Where Lawyers are Humans",
                  style: TextStyle(
                    fontFamily: "Courier",
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            */
          ],
        ),
      ),
    );
  }
}
