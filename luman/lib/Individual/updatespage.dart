import 'package:flutter/material.dart';
import 'package:luman/Backgrounds/updatesbg.dart';
import 'package:luman/Individual/innerpagetextheader.dart';
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
                    "Covid Updates",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "find out how many pax can dine out...",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 22,
                      color: Colors.grey[850],
                      //fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  InkWell(
                    onTap: () => launch('https://www.gov.sg/features/covid-19',
                        forceWebView: true), // forceWebView: true
                    child: TextHeader(
                      //image: "assets/images/helping-hand.png",
                      title:
                          "Overview of Singapore's \n\t\t\t COVID-19 Statistics",
                      boarder: darkgreengrey1,
                      fill: darkgreengrey1,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch("https://www.moh.gov.sg/covid-19",
                        forceWebView: true), // handle your onTap here
                    child: TextHeader(
                      //image: "assets/images/network.png",
                      title:
                          "Updates on Singapore's \n\t\t\t COVID-19 Situation",
                      boarder: darkgreengrey2,
                      fill: darkgreengrey2,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.gov.sg/article/try-out-the-govsg-info-bot",
                        forceWebView: true), // handle your onTap here
                    child: TextHeader(
                      //image: "assets/images/question.png",
                      title: "COVID-19 Info Bot",
                      boarder: darkgreengrey3,
                      fill: darkgreengrey3,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.gov.sg/article/covid-19-resources",
                        forceWebView: true), // handle your onTap here
                    child: TextHeader(
                      //image: "assets/images/toilet-paper.png",
                      title: "All Relevant Resources",
                      boarder: darkgreengrey4,
                      fill: darkgreengrey4,
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
