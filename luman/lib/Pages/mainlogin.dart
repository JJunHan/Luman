import 'package:flutter/material.dart';
import 'package:luman/Pages/mainloginbg.dart';
import 'package:flutter_svg/svg.dart'; //to use svg images
import 'package:luman/Pages/buttons.dart';
import 'package:luman/Pages/loginentry.dart';

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
            SizedBox(height: size.height * 0.60),
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
              color: Color(0xFFFFFFFF).withOpacity(0.6), //0.2 white
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
              color: Color(0xFFFFFFFF).withOpacity(0.6), //Color(0xFF3F51B5),
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
