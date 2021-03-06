import 'package:flutter/material.dart';
import 'package:luman/Backgrounds/homepagebg.dart';
import 'package:luman/Individual/articlesentry.dart';
import 'package:luman/Individual/employersentry.dart';
import 'package:luman/Individual/healthpage.dart';
import 'package:luman/Individual/officeentry.dart';
import 'package:luman/Individual/storiesentry.dart';
import 'package:luman/Individual/updatesentry.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/homepagetextimagefiller.dart';

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
                    "Resources ",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "everything you need in one place :)",
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
                                return StoriesPage();
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/books.png",
                          title: "Stories",
                          subtext: "Curated real",
                          subsubtext: "stories!",
                          boarder: dirtyRed.withOpacity(0.5),
                          fill: dirtyRed.withOpacity(0.85),
                        ),
                      ),
                      SizedBox(width: size.width * 0.045),
                      InkWell(
                        //ArticlesPage
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ArticlesPage();
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/gazette.png",
                          title: "Articles",
                          subtext: "Good Cov-19",
                          subsubtext: "reads!",
                          boarder: dirtyTeal.withOpacity(0.6),
                          fill: dirtyTeal.withOpacity(0.78),
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
                                return UpdatesPage();
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/singapore.png",
                          title: "Updates",
                          subtext: "Cov-19 latest ",
                          subsubtext: "news!",
                          boarder: dirtyGreen.withOpacity(0.45),
                          fill: dirtyGreen.withOpacity(0.65),
                        ),
                      ),
                      SizedBox(width: size.width * 0.045),
                      InkWell(
                        //Health
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Health();
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/calm.png",
                          title: "Health",
                          subtext: "Mental health",
                          subsubtext: "resources!",
                          boarder: dirtyLime.withOpacity(0.4),
                          fill: dirtyLime.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  Row(
                    children: <Widget>[
                      SizedBox(width: size.width * 0.03),
                      InkWell(
                        //OfficePage
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return OfficePage();
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/relax.png",
                          title: "Office",
                          subtext: "Thrive at your",
                          subsubtext: "work place!",
                          boarder: dirtyPurple.withOpacity(0.7),
                          fill: dirtyPurple.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(width: size.width * 0.045),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return EmployerPage();
                              },
                            ),
                          );
                        }, // handle your onTap here
                        child: TextImageFiller(
                          image: "assets/images/boss.png",
                          title: "Employers",
                          subtext: "Suggestions",
                          subsubtext: "for you!",
                          boarder: dirtyGrey.withOpacity(0.7),
                          fill: dirtyGrey.withOpacity(0.85),
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
