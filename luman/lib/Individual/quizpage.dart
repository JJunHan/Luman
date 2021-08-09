import 'package:flutter/material.dart';
import 'package:luman/Pages/homepagebg.dart';
import 'package:luman/Pages/innerpagetextfiller.dart';
import 'package:luman/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  //final username;
  const Body({
    Key? key,
    //required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      innerPage: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  //adjust position of Welcome User here
                  left: size.width * 0.015,
                  top: size.height * 0.15),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Fun Quizzes",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "get know yourself better!",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 22,
                      color: Colors.grey[850],
                      //fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  //Column(
                  //children: <Widget>[
                  //SizedBox(width: size.width * 0.03),
                  InkWell(
                    onTap: () => launch(
                      'https://www.proprofs.com/quiz-school/story.php?title=mjawmdy0ng28v5',
                    ), // forceWebView: true
                    child: TextFiller(
                      //image: "assets/images/helping-hand.png",
                      title: "What is your work personality?",
                      subtext: "Find out which animal you are at work and",
                      subsubtext: "how you communicate in the workplace",
                      boarder: dirtyBlue.withOpacity(0.6),
                      fill: dirtyBlue.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                      "https://www.16personalities.com/free-personality-test",
                    ), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/question.png",
                      title: "What is your MBTI personality?",
                      subtext: "Get a better understanding",
                      subsubtext: "of your personality type",
                      boarder: dirtyIndigo.withOpacity(0.6),
                      fill: dirtyIndigo.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.mindline.sg/workspace/assessment"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/toilet-paper.png",
                      title: "How's your emotional well-being?",
                      subtext: "Interact with",
                      subsubtext: "Lawlo!",
                      boarder: pastelGreen.withOpacity(0.7),
                      fill: pastelGreen.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () =>
                        print("Container pressed"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "ChatBot",
                      subtext: "Connect with",
                      subsubtext: "others!",
                      boarder: dirtyOrange.withOpacity(0.7),
                      fill: dirtyOrange.withOpacity(0.8),
                    ),
                  ),
                  //],
                  //),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
