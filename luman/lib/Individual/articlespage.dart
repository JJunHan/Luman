import 'package:flutter/material.dart';
import 'package:luman/Backgrounds/homepagebg.dart';
import 'package:luman/Individual/innerpagetextfiller.dart';
import 'package:luman/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Articles extends StatelessWidget {
  //final username;
  const Articles({
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
                    "Articles",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "COVID-19 Related Articles",
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
                      'https://www.a-star.edu.sg/sics/news-views/blog/blog/covid-19/angst-and-anger-why-does-the-covid-19-pandemic-make-us-so-upset',
                    ), // forceWebView: true
                    child: TextFiller(
                      //image: "assets/images/helping-hand.png",
                      title: "A*Star Singapore",
                      subtext: "Navigating COVID-19 Psychological Risks",
                      subsubtext: "",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                      "https://edition.cnn.com/2020/03/14/health/coronavirus-fears-mental-health-wellness-trnd/index.html",
                    ), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/question.png",
                      title: "CNN News",
                      subtext: "How to keep coronavirus fears from",
                      subsubtext: "affecting your mental health",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.americanbar.org/groups/litigation/covid-19/articles-resources/what-covid-19-taught-me-about-resilience/"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/toilet-paper.png",
                      title: "American Bar Association",
                      subtext: "What COVID-19 Taught Me About Resilience",
                      subsubtext: "",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://news.bloomberglaw.com/us-law-week/insight-the-practice-of-law-in-the-time-of-covid-19"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "Bloomberg Law",
                      subtext: "INSIGHT: The Practice of Law in the",
                      subsubtext: " Time of Covid-19",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.ibanet.org/a-lawyers-survival-guide-to-Covid-19#video"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "International Bar Association",
                      subtext: "A lawyers survival guide to Covid-19",
                      subsubtext: "(video)",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.todayonline.com/singapore/society-must-recognise-potential-mental-health-crisis-following-covid-19-says-singapore"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "Today Online",
                      subtext: "Society must recognise potential mental health",
                      subsubtext: "crisis following Covid-19",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://lawgazette.com.sg/news/presidents-message/presidents-message-jan-2021/"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "Singapore Law Gazette",
                      subtext: "Opening of the Singapore legal year (2021)",
                      subsubtext: "",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.cgh.com.sg/centres-services/tracs/PublishingImages/Pages/Coping%20With%20COVID-19/Looking%20Out%20for%20One%20Another.pdf"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "Changi General Hospital",
                      subtext: "Looking out for one another during COVID-19",
                      subsubtext: "",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.forbes.com/sites/onemind/2020/03/17/when-home-becomes-the-workplace-mental-health-and-remote-work/?sh=73a3b6111760"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "Forbes",
                      subtext: "When Home Becomes The Workplace:",
                      subsubtext: "Mental Health And Remote Work",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://stayprepared.sg/mymentalhealth/my-daily-life/impact-of-covid-19/"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "Temasek Foundation",
                      subtext: "Stay Prepared: Impact of COVID 19 Articles",
                      subsubtext: "",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.cbc.ca/news/canada/british-columbia/months-isolation-mental-health-covid-1.5521649"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "CBC News",
                      subtext: "Mental illness will be 'next wave'",
                      subsubtext: "of COVID-19 pandemic, epidemiologist says",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.imh.com.sg/wellness/page.aspx?id=553"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "Institute of Mental Health",
                      subtext: "Coping with Change",
                      subsubtext: "",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () => launch(
                        "https://www.haaretz.com/israel-news/.premium.MAGAZINE-trauma-is-the-real-threat-of-the-coronavirus-how-to-keep-your-mental-health-1.8753264"), // handle your onTap here
                    child: TextFiller(
                      //image: "assets/images/network.png",
                      title: "Haaretz Daily Newspaper",
                      subtext: "Trauma Is the Real Threat of the",
                      subsubtext: " Coronavirus Crisis",
                      boarder: darkGrey.withOpacity(0.6),
                      fill: darkGrey.withOpacity(0.9),
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
