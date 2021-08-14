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

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "firstbar") {
        visibility_firstbar = visibility;
      }
      if (field == "secondbar") {
        visibility_secondbar = visibility;
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
                      "For Employers",
                      style: TextStyle(
                        fontFamily: "open sans",
                        fontSize: size.width / 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      "resources that employers might find useful :)",
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
                        title: "Employers Guidelines",
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
                                    "https://www.americanbar.org/content/dam/aba/administrative/professional_responsibility/lawyer_well_being_report_final.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "American Bar Association",
                                  subtext: "Creating a Movement To Improve ",
                                  subsubtext:
                                      "Well-Being in the Legal Profession",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.mom.gov.sg/-/media/mom/documents/covid-19/advisories/tripartite-advisory-on-mental-well-being-at-workplaces.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Ministry of Manpower",
                                  subtext: "Tripartite advisory on mental",
                                  subsubtext: "well-being at workplaces",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.hpb.gov.sg/workplace/workplace-programmes/useful-information-for-organisations/essential-guide-to-workplace-health-promotion",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Health Promotion Board",
                                  subtext: "Essential guide to workplace ",
                                  subsubtext: "health promotion ",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.tal.sg/tafep/getting-started/progressive/tripartite-standards",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "TAFEP",
                                  subtext: "Tripartite standards of good",
                                  subsubtext: "employment practices",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.bca.gov.sg/GreenMark/others/GM_HW_2018.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "BCA-HPB",
                                  subtext: "Green mark for",
                                  subsubtext: "healthier workplaces",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.silverribbonsingapore.com/pdfs/publications/publication112012.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Silver Ribbon",
                                  subtext: "Handbook for Employers",
                                  subsubtext: "",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "http://www.workwellleaders.org/wp-content/uploads/2020/05/workwellleaders_eguide.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Workwell Leaders",
                                  subtext: "Workplace Wellness: Managing and",
                                  subsubtext:
                                      "Thriving in the time of COVID-19",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
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
                        title: "Articles for Employers",
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
                                    "https://lawgazette.com.sg/practice/practice-matters/diversity-and-inclusion/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Singapore Law Gazette",
                                  subtext: "Diversity and Inclusion in the",
                                  subsubtext: "Legal Profession",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://lawgazette.com.sg/practice/practice-support/the-next-normal-invest-in-people-engagement-to-energise-your-team/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Singapore Law Gazette",
                                  subtext: "The Next Normal: Invest in People",
                                  subsubtext:
                                      "Engagement to Energise Your Team",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.jobstreet.com.sg/en/cms/employer/5-workplace-wellness-trends-hr-need-look/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "JobStreet SG",
                                  subtext: "The 5 Workplace Wellness Trends",
                                  subsubtext: "HR Need to Look Out For",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.legal500.com/fivehundred-magazine/leadership/good-wellbeing-starts-with-good-leadership/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Legal 500",
                                  subtext: "Good Wellbeing Starts with",
                                  subsubtext: "Good Leadership",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.businesstimes.com.sg/life-culture/company-of-good/mental-health-matters-at-work",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "The Business Times",
                                  subtext: "Mental Health Matters at Work",
                                  subsubtext: "",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.forbes.com/sites/ashikahmed/2020/06/08/why-employee-wellbeing-must-be-at-the-forefront-of-returning-to-work/?sh=793ce181dd63",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Forbes",
                                  subtext: "Why Employee Well-Being Must Be At",
                                  subsubtext:
                                      "The Forefront Of Returning To Work",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://viewer.factiva.com/edition/index?an=STBT000020210216eh2h001ms&editionId=13221014&eid4=dli4bWDCZhBHp6lm_2B5ppUvgNaPg533Anpf1QBRwdZ9lc00UN8_2F_2FOT0WHK6uHzphKbT_2BJbqKUSYn3RamxNEmi11vA2osgJwbCK3ENs7z_2FWN_2BcLQe6_2BtsYV8iHgU7V1YCSTE9PYTvUKqfcsgWWVOTHPkL_2BPTEE8UCcMfX6MQQKAb_2Bu0OulOvOJNQ_3D_3D|2",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Factiva",
                                  subtext: "Mental health Can be an",
                                  subsubtext: "Organisation's Wealth",
                                  boarder: lightblue2.withOpacity(0.5),
                                  fill: lightblue2,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.healthhub.sg/live-healthy/1368/boosting-workplace-health-and-productivity",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.0",
                                  maxwidth: "1.4",
                                  title: "Healthhub",
                                  subtext: "6 Ways to Promote A Healthy",
                                  subsubtext: "Lifestyle at Work",
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
