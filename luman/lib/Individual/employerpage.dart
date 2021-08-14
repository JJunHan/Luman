import "package:flutter/material.dart";
import 'package:luman/Backgrounds/employerbg.dart';
import 'package:luman/Individual/innerpagepopup.dart';
import 'package:luman/Individual/innerpagesubtextfiller.dart';
import 'package:luman/Individual/innerpagetextfiller.dart';
import 'package:luman/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Employer extends StatefulWidget {
  @override
  EmployerState createState() => new EmployerState();
}

class EmployerState extends State<Employer> {
  bool visibility_firstbar = false;
  bool visibility_secondbar = false;
  bool visibility_thirdbar = false;
  bool visibility_fourbar = false;
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
      if (field == "fourbar") {
        visibility_fourbar = visibility;
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
                      "Need Help?",
                      style: TextStyle(
                        fontFamily: "open sans",
                        fontSize: size.width / 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      "\tthe COVID-19 situation is a tough time for \nmany, so don’t hesitate to reach out for help",
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
                        title: "Legal Support Schemes",
                        boarder: dirtyRed.withOpacity(0.6),
                        fill: dirtyRed.withOpacity(0.7),
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
                                    "https://www.lawsociety.org.sg/the-law-society/support-schemes/lawcare/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "LawCare",
                                  subtext: "A confidential counselling service",
                                  subsubtext:
                                      "administered by qualified counsellors",
                                  subsubsubtext:
                                      "for members of the Law Society",
                                  subsubsubsubtext: "of Singapore",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.lawsociety.org.sg/the-law-society/support-schemes/members-assistance-care-helpline-mach/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Members' Assistance & Care",
                                  subtext:
                                      "A helpline for members of the Law Society",
                                  subsubtext:
                                      "of Singapore who face issues at work or",
                                  subsubsubtext:
                                      "problems which may affect work",
                                  subsubsubsubtext:
                                      "6530 0213 / Mon-Fri, 9am to 5pm",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.lawsociety.org.sg/the-law-society/support-schemes/relational-mentorship-rm/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Relational Mentorship",
                                  subtext:
                                      "A scheme to provide young practitioners",
                                  subsubtext:
                                      "with a relational mentor with a focus on",
                                  subsubsubtext:
                                      "the psychosocial well-being of the",
                                  subsubsubsubtext: "young practitioner",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.lawsociety.org.sg/the-law-society/support-schemes/young-lawyers-law-mentor-scheme/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "4.2",
                                  maxwidth: "1.4",
                                  title:
                                      "Young Lawyers Law \n \t\tMentors Scheme",
                                  subtext:
                                      "An informal peer to peer support scheme",
                                  subsubtext:
                                      "that pairs up Young Lawyers with",
                                  subsubsubtext: "Law Graduates, Trainees and",
                                  subsubsubsubtext: "Newly Qualified Lawyers",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.lawyersdepressionproject.org/about/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "4.9",
                                  maxwidth: "1.4",
                                  title: "Lawyers Depression Project",
                                  subtext:
                                      "A confidential forum and bi-monthly online",
                                  subsubtext:
                                      "peer support group meetings hosted by ",
                                  subsubsubtext:
                                      "legal professionals who have suffered",
                                  subsubsubsubtext:
                                      "from mental health conditions",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
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
                        title: "Crisis & Suicide Prevention",
                        boarder: dirtyRed.withOpacity(0.6),
                        fill: dirtyRed.withOpacity(0.7),
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
                                    "https://www.sos.org.sg/about/our-services",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Samaritans of Singapore (SOS)",
                                  subtext:
                                      "Provide emotional support for individuals",
                                  subsubtext:
                                      "having difficulty coping during a crisis,",
                                  subsubsubtext:
                                      "thinking of suicide or affected by suicide.",
                                  subsubsubsubtext: "1800-221-4444 / 24 hours",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.imh.com.sg/contact-us/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "IMH Mental Health Helpline",
                                  subtext:
                                      "A 24-7 hotline that provides support",
                                  subsubtext:
                                      "to individuals who are facing any mental ",
                                  subsubsubtext: "health crisis",
                                  subsubsubsubtext: "6389 2222 / 24 hours",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
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
                        title: "General Mental Health",
                        boarder: dirtyRed.withOpacity(0.6),
                        fill: dirtyRed.withOpacity(0.7),
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
                                onTap: () {},
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "National Care Helpline",
                                  subtext: "A hotline set-up to offer support",
                                  subsubtext:
                                      "to those who need a listening ear",
                                  subsubsubtext: "during the COVID-19 outbreak",
                                  subsubsubsubtext:
                                      "1800 202 6868 / daily, 8am-12am daily",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch("https://www.ec2.sg/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Fei Yue’s Online Service",
                                  subtext: "Provides support through a quick",
                                  subsubtext: "chat service where individuals",
                                  subsubsubtext:
                                      "can chat with a counsellor instantly",
                                  subsubsubsubtext:
                                      "Mon-Fri, 10am-12pm/2pm-5pm",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://livesupport.imh.com.sg/CHAT/CuteSoft_Client/CuteChat/SupportClient.aspx?ID=imh",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "IMH Health Services",
                                  subtext:
                                      "Provides support via online chat and",
                                  subsubtext:
                                      "provides free health assessment to",
                                  subsubsubtext:
                                      "young adults aged 16 to 30 years old",
                                  subsubsubsubtext: "Tue-Fri, 1pm-8pm",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.silverribbonsingapore.com/counselling.html",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Silver Ribbon Counselling",
                                  subtext:
                                      "Provides emotional support through their",
                                  subsubtext:
                                      "hotline and their basic complimentary",
                                  subsubsubtext:
                                      "in-person counselling service",
                                  subsubsubsubtext:
                                      "6386 1928 / Mon-Fri, 9am-5pm",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.care.sg/hear4u/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Hear4U",
                                  subtext:
                                      "An online service by CARE Singapore",
                                  subsubtext:
                                      "for individuals to seek advice and",
                                  subsubsubtext: "express their concerns",
                                  subsubsubsubtext:
                                      "6978 2728 / Mon-Fri, 10am-5pm",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.clarity-singapore.org/web1/index.php/contact-us",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Clarity Singapore Helpline",
                                  subtext: "Provides emotional support for",
                                  subsubtext: "individuals experiencing stress",
                                  subsubsubtext:
                                      "anxiety, anger and depression",
                                  subsubsubsubtext:
                                      "6757 7990 / hours vary daily",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.samhealth.org.sg/about-samh/contact-us/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "SAMH Helpline and Counselling",
                                  subtext:
                                      "Provides a helpline for all mental health",
                                  subsubtext:
                                      "related help and in-person donation",
                                  subsubsubtext: "based counselling sessions",
                                  subsubsubsubtext: "Mon-Fri. 9am-6pm",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.ncss.gov.sg/our-initiatives/beyond-the-label/belle-beyond-the-label-helpbot",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "NCSS Belle the helpbot",
                                  subtext: "Belle the helpbot is created for",
                                  subsubtext:
                                      "the public to find help and gain",
                                  subsubsubtext: "easy access to relevant",
                                  subsubsubsubtext: "services and resources",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://cpc.familylife.sg/?r_done=1",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Catholic Family Life Counselling",
                                  subtext: "Provides pro-bono e-counselling",
                                  subsubtext: "services via zoom to anyone",
                                  subsubsubtext: "who requires support,",
                                  subsubsubsubtext: "regardless of religion",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://wesleymc.org/care/counselling",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Wesley Church Counselling",
                                  subtext:
                                      "Provides Christian-based counselling",
                                  subsubtext: "service to individuals",
                                  subsubsubtext:
                                      " from any faith and walk of life",
                                  subsubsubsubtext: "",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                            ],
                          )
                        : new Container(),
                    SizedBox(height: size.height * 0.02),
                    InkWell(
                      onTap: () => visibility_fourbar
                          ? _changed(false, "fourbar")
                          : _changed(true, "fourbar"),
                      child: Popup(
                        //image: "assets/images/helping-hand.png",
                        topheaderfontsize: 19,
                        maxwidth: "1.13",
                        maxheight: "10",
                        title: "Community & Support Groups",
                        boarder: dirtyRed.withOpacity(0.6),
                        fill: dirtyRed.withOpacity(0.7),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(
                            visibility_fourbar
                                ? Icons.cancel_outlined
                                : Icons
                                    .add, //if visible show the X else show a +
                            size: 23.0,
                          ),
                          onPressed: () {
                            visibility_fourbar
                                ? _changed(false, "fourbar")
                                : _changed(true, "fourbar");
                            //_changed(false, "obs");
                          },
                        ),
                      ),
                    ),
                    visibility_fourbar
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch("https://huddlehumans.com/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "Huddlehumans",
                                  subtext:
                                      "A telegram and discord community which",
                                  subsubtext: "provides a safe and anonymous",
                                  subsubsubtext:
                                      "environment to share your feelings without",
                                  subsubsubsubtext:
                                      "being judged and to seek support",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.psaltcare.com/",
                                    forceWebView: true),
                                child: SubTextFiller(
                                  tags: false,
                                  maxheight: "5.0",
                                  maxwidth: "1.4",
                                  title: "PSALT Care Peer Support",
                                  subtext:
                                      "Peer support groups led by peer support",
                                  subsubtext:
                                      "specialists for individuals with issues",
                                  subsubsubtext:
                                      "related to anxiety, depression",
                                  subsubsubsubtext: "or bipolar disorders",
                                  boarder: pastelPink.withOpacity(0.5),
                                  fill: pastelPink.withOpacity(0.6),
                                ),
                              ),
                            ],
                          )
                        : new Container(),
                    SizedBox(height: size.height * 0.02),
                    InkWell(
                      onTap: () => launch(
                          "https://www.mindset.com.sg/sites/mindset/files/mindset/understanding-mental-health/NCSS-Directory-on-Mental-Health-Services.pdf",
                          forceWebView: false),
                      child: Popup(
                        topheaderfontsize: 19,
                        maxwidth: "1.13",
                        maxheight: "10",
                        title: "Find More Help",
                        boarder: dirtyRed.withOpacity(0.6),
                        fill: dirtyRed.withOpacity(0.7),
                        child: IconButton(
                          color: Colors.lime,
                          icon: Icon(
                            Icons.health_and_safety_rounded,
                            size: 23.0,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
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
