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
            SizedBox(height: size.height * 0.70),

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
              color: Color(0xFFFFFFFF),
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
              text: "Sign up",
              color: Color(0xFF3F51B5), //Colors.blue FF3F51B5
              textColor: Colors.white,
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
            SizedBox(height: size.height * 0.10),
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
