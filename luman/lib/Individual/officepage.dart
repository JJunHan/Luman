import "package:flutter/material.dart";
import 'package:luman/Backgrounds/officebg.dart';
import 'package:luman/Individual/innerpagepopup.dart';
import 'package:luman/Individual/innerpagesubtextfiller.dart';
import 'package:luman/Individual/innerpagetextfiller.dart';
import 'package:luman/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Office extends StatefulWidget {
  @override
  OfficeState createState() => new OfficeState();
}

class OfficeState extends State<Office> {
  bool visibility_firstbar = false;
  bool visibility_secondbar = false;
  bool visibility_thirdbar = false;
  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "firstbar") {
        visibility_firstbar = visibility;
      }
      if (field == "secondbar") {
        visibility_secondbar = visibility;
      }
      if (field == "thirdbar") {
        visibility_thirdbar = visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        //margin: new EdgeInsets.only(left: 16.0, right: 16.0),
        child: Background(
          child: Container(
            margin: EdgeInsets.only(
                //adjust position of Need help title User here
                left: size.width * 0.015,
                right: size.width * 0.015,
                top: size.height * 0.15),
            alignment: Alignment.center,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Thrive at Work",
                      style: TextStyle(
                        fontFamily: "open sans",
                        fontSize: size.width / 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      "work effectively during COVID-19!",
                      style: TextStyle(
                        fontFamily: "open sans",
                        fontSize: size.width / 24,
                        color: Colors.white,
                        //fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    InkWell(
                      onTap: () => visibility_firstbar
                          ? _changed(false, "firstbar")
                          : _changed(true, "firstbar"),
                      child: Popup(
                        //image: "assets/images/helping-hand.png",
                        topheaderfontsize: 19,
                        maxwidth: "1.13",
                        maxheight: "10",
                        title: "Working From Home",
                        boarder: lightblue.withOpacity(0.6),
                        fill: lightblue.withOpacity(0.7),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(
                            visibility_firstbar
                                ? Icons.cancel_outlined
                                : Icons
                                    .add, //if visible show the X else show a +
                            size: 23.0,
                          ),
                          onPressed: () {
                            visibility_firstbar
                                ? _changed(false, "firstbar")
                                : _changed(true, "firstbar");
                            //_changed(false, "obs");
                          },
                        ),
                      ),
                    ),
                    visibility_firstbar
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.mom.gov.sg/-/media/mom/documents/covid-19/posters/infographic-work-from-home-tips.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Ministry of Manpower",
                                  subtext: "4 Quick Tips on Working from Home",
                                  subsubtext: "",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://stayprepared.sg/mymentalhealth/articles/thriving-while-working-from-home/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Temasek Foundation",
                                  subtext:
                                      "Stay Prepared: Thriving While Working",
                                  subsubtext: "From Home",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.psd.gov.sg/challenge/ideas/work-better/public-service-working-from-home-tips-communication",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Public Service Division",
                                  subtext: "WFH: Breaking The Barriers",
                                  subsubtext: "To Communication",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.channelnewsasia.com/commentary/remote-working-corporate-culture-boss-employee-relationships-374561",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Channel News Asia",
                                  subtext:
                                      "Commentary: Toxic Workplace Behaviours",
                                  subsubtext: "Persist despite Remote Working",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://content.mycareersfuture.gov.sg/6-ways-survive-toxic-workplace/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "MyCareersFuture",
                                  subtext: "Stress At Work: 6 Tips For Dealing",
                                  subsubtext: "With A Toxic Workplace",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.jcu.edu.sg/news/releases/how-to-protect-your-mental-health-when-working-from-home-amid-the-covid-19-pandemic",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "James Cook University",
                                  subtext: "How to Protect your Mental Health",
                                  subsubtext:
                                      "when Working from Home during COVID-19",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                            ],
                          )
                        : new Container(),
                    SizedBox(height: size.height * 0.02),
                    InkWell(
                      onTap: () => visibility_secondbar
                          ? _changed(false, "secondbar")
                          : _changed(true, "secondbar"),
                      child: Popup(
                        //image: "assets/images/helping-hand.png",
                        topheaderfontsize: 19,
                        maxwidth: "1.13",
                        maxheight: "10",
                        title: "Managing Work Load",
                        boarder: lightblue.withOpacity(0.6),
                        fill: lightblue.withOpacity(0.7),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(
                            visibility_secondbar
                                ? Icons.cancel_outlined
                                : Icons
                                    .add, //if visible show the X else show a +
                            size: 23.0,
                          ),
                          onPressed: () {
                            visibility_secondbar
                                ? _changed(false, "secondbar")
                                : _changed(true, "secondbar");
                            //_changed(false, "obs");
                          },
                        ),
                      ),
                    ),
                    visibility_secondbar
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://hbr.org/2017/01/how-to-tell-your-boss-you-have-too-much-work",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Harvard Business Review",
                                  subtext: "How to Tell Your Boss ",
                                  subsubtext: "You Have Too Much Work",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.lifehack.org/818783/heavy-workload",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Lifehack",
                                  subtext: "How to Effectively Manage",
                                  subsubtext: "a Heavy Workload at Work",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.psychologytoday.com/sg/blog/in-practice/201802/6-strategies-when-you-feel-overwhelmed-work",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Psychology Today",
                                  subtext: "6 Strategies for When You",
                                  subsubtext: "Feel Overwhelmed at Work",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://hbr.org/2018/08/5-things-to-do-when-you-feel-overwhelmed-by-your-workload",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Harvard Business Review",
                                  subtext: "5 Things to Do When You Feel",
                                  subsubtext: "Overwhelmed by Your Workload",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.forbes.com/sites/jacquelynsmith/2013/07/10/10-tips-for-dealing-with-an-overly-demanding-boss/?sh=574fa96964bc",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Forbes",
                                  subtext: "10 Tips For Dealing With An",
                                  subsubtext: "Overly Demanding Boss",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "http://hrnews.co.uk/5-secrets-to-handling-a-bosss-unrealistic-expectations/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "HR News",
                                  subtext: "5 Secrets to Handling a Boss’s",
                                  subsubtext: "Unrealistic Expectations",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                            ],
                          )
                        : new Container(),
                    SizedBox(height: size.height * 0.02),
                    InkWell(
                      onTap: () => visibility_thirdbar
                          ? _changed(false, "thirdbar")
                          : _changed(true, "thirdbar"),
                      child: Popup(
                        //image: "assets/images/helping-hand.png",
                        topheaderfontsize: 19,
                        maxwidth: "1.13",
                        maxheight: "10",
                        title: "Increase Work Effectiveness",
                        boarder: lightblue.withOpacity(0.6),
                        fill: lightblue.withOpacity(0.7),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(
                            visibility_thirdbar
                                ? Icons.cancel_outlined
                                : Icons
                                    .add, //if visible show the X else show a +
                            size: 23.0,
                          ),
                          onPressed: () {
                            visibility_thirdbar
                                ? _changed(false, "thirdbar")
                                : _changed(true, "thirdbar");
                            //_changed(false, "obs");
                          },
                        ),
                      ),
                    ),
                    visibility_thirdbar
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.ted.com/talks/shawn_achor_the_happy_secret_to_better_work?referrer=playlist-talks_for_when_you_feel_totall&language=en",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "TED Talk",
                                  subtext: "The Happy Secret to Better Work",
                                  subsubtext: "",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://hbr.org/2019/12/10-quick-tips-for-avoiding-distractions-at-work",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Harvard Business Review",
                                  subtext: "10 Quick Tips for Avoiding",
                                  subsubtext: "Distractions at Work",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.ted.com/talks/katherine_hampsten_how_miscommunication_happens_and_how_to_avoid_it?language=en",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "TED Talk",
                                  subtext: "Avoiding Miscommunications ",
                                  subsubtext: "",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.psychologytoday.com/sg/blog/why-bad-looks-good/201808/here-is-the-time-day-when-you-are-most-productive",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Psychology Today",
                                  subtext: "Here Is the Time of Day When",
                                  subsubtext: "You Are Most Productive ",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://positivepsychology.com/what-is-resilience/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Positive Psychology",
                                  subtext: "What is Resilience and Why it's",
                                  subsubtext: "Important to Bounce Cack",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.youtube.com/watch?v=vo_lZiytsMw",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "TED Talk",
                                  subtext: "Change Your Mindset and",
                                  subsubtext: "Achieve Anything",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                            ],
                          )
                        : new Container(),
                    SizedBox(height: size.height * 0.05),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
