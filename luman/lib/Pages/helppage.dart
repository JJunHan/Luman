import 'package:flutter/material.dart';
import 'package:luman/Individual/quizentry.dart';
import 'package:luman/Pages/homepagebg.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/homepagetextimagefiller.dart';
import 'package:luman/Individual/snakegame.dart';

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
                    "Need a distraction?",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "have some fun :)",
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
                                return SnakeGame(); // Change this
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/snake.png",
                          title: "Games",
                          subtext: "Have some",
                          subsubtext: "fun!",
                          boarder: dirtyBlueGrey.withOpacity(0.6),
                          fill: dirtyBlueGrey.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(width: size.width * 0.045),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return QuizPage(); // Change this
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/idea.png",
                          title: "Quizzes",
                          subtext: "Know yourself",
                          subsubtext: "better!",
                          boarder: dirtyDarkBrown.withOpacity(0.9),
                          fill: dirtyDarkBrown.withOpacity(0.79),
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
