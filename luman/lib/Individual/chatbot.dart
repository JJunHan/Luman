import 'package:flutter/material.dart';
import 'package:luman/Individual/helplinesentry.dart';
import 'package:luman/Backgrounds/homepagebg.dart';
import 'package:luman/Individual/innerpagetextfiller.dart';
import 'package:luman/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
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
                  left: size.width * 0.01,
                  top: size.height * 0.15),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Chatbots",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "if you need someone to talk to, or just simply \n\t\twant a quick chat, this is the place for you",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 22,
                      color: Colors.grey[850],
                      //fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
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
                    child: TextFiller(
                      maxheight: "6.25",
                      maxwidth: "1.25",
                      //image: "assets/images/helping-hand.png",
                      title: "Legal Professionals",
                      subtext: "Connect with other legal professionals",
                      subsubtext: "on the app",
                      boarder: darkGrey,
                      fill: darkGrey,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  InkWell(
                    onTap: () => launch(
                      "https://t.me/SGchatterbot",
                    ), // handle your onTap here
                    child: TextFiller(
                      maxheight: "6.25",
                      maxwidth: "1.25",
                      //image: "assets/images/question.png",
                      title: "Quick Chats",
                      subtext: "Connect instantly with people in Singapore",
                      subsubtext: "anonymously through telegram",
                      boarder: darkGrey,
                      fill: darkGrey,
                    ),
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
