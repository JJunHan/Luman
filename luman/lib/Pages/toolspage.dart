import 'package:flutter/material.dart';
import 'package:luman/Individual/chatbotentry.dart';
import 'package:luman/Individual/forums.dart';
import 'package:luman/Individual/helpbotentry.dart';
import 'package:luman/Individual/helplinesentry.dart';
import 'package:luman/Backgrounds/homepagebg.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/homepagetextimagefiller.dart';

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
      innerPage: false,
      pinkbg: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  //adjust position of Welcome User here
                  left: size.width * 0.05,
                  top: size.height * 0.15),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Tools",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "get connected now :)",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 22,
                      color: Colors.grey[850],
                      //fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Row(
                    children: <Widget>[
                      SizedBox(width: size.width * 0.03),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HelpLinesPage();
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/helping-hand.png",
                          title: "Helplines",
                          subtext: "Find the help",
                          subsubtext: "you need!",
                          boarder: dirtyBlue.withOpacity(0.6),
                          fill: dirtyBlue.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(width: size.width * 0.045),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Forums(username);
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/question.png",
                          title: "Forums",
                          subtext: "Questions &",
                          subsubtext: "answers!",
                          boarder: dirtyIndigo.withOpacity(0.6),
                          fill: dirtyIndigo.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  Row(
                    children: <Widget>[
                      SizedBox(width: size.width * 0.03),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HelptbotPage();
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/toilet-paper.png",
                          title: "HelpBot",
                          subtext: "Interact with",
                          subsubtext: "Lawlo!",
                          boarder: pastelGreen.withOpacity(0.7),
                          fill: pastelGreen.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(width: size.width * 0.045),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ChatbotPage();
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/network.png",
                          title: "ChatBot",
                          subtext: "Connect with",
                          subsubtext: "others!",
                          boarder: dirtyOrange.withOpacity(0.7),
                          fill: dirtyOrange.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
