import 'package:flutter/material.dart';
import 'package:luman/Pages/mainloginbg.dart';
import 'package:flutter_svg/svg.dart'; //to use svg images
import 'package:luman/Pages/buttons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/icons/logo.png",
              //width: size.width,
              //height: size.height,
              //fit: BoxFit.fill,
            ),
            SizedBox(height: size.height * 0.05),
            Stack(
              // Stack the paint and words tgt to make it outlined
              children: <Widget>[
                Text(
                  "Lawyers are Humans too",
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontFamily: "Courier",
                    fontSize: 24,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = Colors.white,
                  ),
                ),
                Text(
                  "Lawyers are Humans too",
                  style: TextStyle(
                    fontFamily: "Courier",
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            /*
            SvgPicture.asset(
              "assets/icons/law.svg",
              height: size.height * 0.05,
            ),
            */
            RoundedButton(
              text: "LOGIN",
              textColor: Colors.black,
              color: Color(0xFFFFE0B2),
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Body(); //LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP", //Colors.orange FFFFE0B2
              color: Color(0xFFE6EE9c), // Colors.green FFE6EE9c
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Body(); //SignUpScreen();
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
