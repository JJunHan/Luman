import 'package:flutter/material.dart';
import 'package:luman/Pages/buttons.dart';
import 'package:luman/Pages/mainloginbg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luman/constants.dart';

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
            SizedBox(height: size.height * 0.03),
            /*
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            */
            SizedBox(height: size.height * 0.03),
            /*
            RoundedInputField(
              hintText: "Your Username",
              onChanged: (text) {
                Username = text;
              },
            ),
            
            RoundedPasswordField(
              onChanged: (text) {
                Password = text;
              },
            ),
            */
            RoundedButton(
              text: "Login",
              press: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Text('Dialog Title'),
                          content: Text(Username),
                        ));
              },
            ),
            /*
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
            ),*/
          ],
        ),
      ),
    );
  }
}
