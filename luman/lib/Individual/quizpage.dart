import 'package:flutter/material.dart';
import 'package:luman/Pages/homepagebg.dart';
import 'package:luman/Individual/innerpagetextfiller.dart';
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
      pinkbg: true,
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
                  InkWell(
                    onTap: () => launch(
                      'https://www.proprofs.com/quiz-school/story.php?title=mjawmdy0ng28v5',
                    ), // forceWebView: true
                    child: TextFiller(
                      //image: "assets/images/helping-hand.png",
                      title: "What is your work personality?",
                      subtext: "Find out which animal you are at work and",
                      subsubtext: "how you communicate in the workplace",
                      boarder: darkblue1.withOpacity(0.6),
                      fill: darkblue1.withOpacity(0.9),
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
                      boarder: darkblue2.withOpacity(0.6),
                      fill: darkblue2.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.mindline.sg/workspace/assessment"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/toilet-paper.png",
                      title: "How's your emotional well-being?",
                      subtext: "Find out how well you are coping, and access ",
                      subsubtext: "resources to keep you mentally strong",
                      boarder: darkblue3.withOpacity(0.7),
                      fill: darkblue3.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.doctoroz.com/quizzes/whats-your-chronotype/particle-1"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "What is your Chronotype?",
                      subtext: "Discover your chronotype and better understand",
                      subsubtext: "your biological programming",
                      boarder: darkblue4.withOpacity(0.7),
                      fill: darkblue4.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.doctoroz.com/quiz-whats-your-stress-type"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "What is your stress type?",
                      subtext: "Find out your unique stress type and get",
                      subsubtext:
                          "targeted solutions designed to help you relax",
                      boarder: darkblue5.withOpacity(0.7),
                      fill: darkblue5.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(height: size.height * 0.07),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
