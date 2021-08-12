import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:luman/Backgrounds/homepagebg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luman/Welcome/welcomeentry.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/resources_slider.dart';
import 'package:luman/Pages/homepageheaders.dart';
import 'package:luman/Pages/toolslider.dart';
import 'package:luman/Pages/helpslider.dart';
import 'package:luman/Pages/resourcepageentry.dart';
import 'package:luman/Pages/toolspageentry.dart';
import 'package:luman/Pages/helppageentry.dart';
import 'package:luman/Welcome/login.dart';

class Body extends StatelessWidget {
  final username;
  const Body({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      //this is from homepagebg
      innerPage: true,
      pinkbg: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Start of Hello User
            Container(
                //width: size.width,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                    //adjust position of Welcome User here
                    left: size.width * 0.10,
                    top: size.height * 0.10),
                //padding: EdgeInsets.(10.0), //this is for internal padding
                child: Row(
                  children: <Widget>[
                    Text(
                      "Hello " + username + ",",
                      style: TextStyle(
                        fontFamily: "open sans",
                        fontSize: size.width / 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.12,
                    ),
                    InkWell(
                      onTap: () {
                        Future<void> signOut() async {
                          //create an instance you your firebase auth.
                          final FirebaseAuth _firebaseAuth =
                              FirebaseAuth.instance;

                          //return this future to the place you called it.
                          return _firebaseAuth.signOut().whenComplete(() {
                            Navigator.pop(context);
                            print("SignOut Done");
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Sign Out Successful")));
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomeScreen()),
                            );
                          }).catchError((error) {
                            print("error in signout $error");
                          });
                        }

                        signOut(); // Sign out finally..
                      },
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            color: Colors.white,
                            icon: Icon(
                              Icons.exit_to_app,
                              size: 23.0,
                            ),
                            onPressed: () {},
                          ),
                          Text(
                            "Logout",
                            style: TextStyle(
                              fontFamily: "open sans",
                              fontSize: size.width / 26,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            homepageHeaders(
              text: "Resources just for you",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResourcePage(); // Change this
                    },
                  ),
                );
              },
            ),

            ResourcesSlider(),

            homepageHeaders(
              text: "Tools to get you connected",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ToolsPage(); // Change this
                    },
                  ),
                );
              },
            ),

            ToolSlider(),

            homepageHeaders(
              text: "Need a distraction?",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HelpPage(); // Change this
                    },
                  ),
                );
              },
            ),

            HelpSlider(
                //onChanged: "holder",
                ),

            //SizedBox(height: size.height * 0.25),
            //SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
