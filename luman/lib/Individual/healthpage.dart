import "package:flutter/material.dart";
import 'package:luman/Backgrounds/healthbg.dart';
import 'package:luman/Individual/innerpagepopup.dart';
import 'package:luman/Individual/innerpagesubtextfiller.dart';
import 'package:luman/Individual/innerpagetextfiller.dart';
import 'package:luman/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Health extends StatefulWidget {
  @override
  HealthState createState() => new HealthState();
}

class HealthState extends State<Health> {
  bool visibility_firstbar = false;
  bool visibility_secondbar = false;
  bool visibility_thirdbar = false;
  bool visibility_fourbar = false;
  bool visibility_fifthbar = false;
  bool visibility_sixthbar = false;
  bool visibility_sevenbar = false;
  void _changed(bool visibility, String field) {
    setState(
      () {
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
        if (field == "fifthbar") {
          visibility_fifthbar = visibility;
        }
        if (field == "sixthbar") {
          visibility_sixthbar = visibility;
        }
        if (field == "sevenbar") {
          visibility_sevenbar = visibility;
        }
      },
    );
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
                      "Health",
                      style: TextStyle(
                        fontFamily: "open sans",
                        fontSize: size.width / 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      "Self Assessments and Mental Health Resources",
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
                        boarder: dirtyDarkBrown.withOpacity(0.6),
                        fill: dirtyDarkBrown.withOpacity(0.85),
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
                                    "https://www.psychologytoday.com/sg/blog/therapy-matters/201105/the-depressed-lawyer",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Law & Mental Health",
                                  subtext: "The Depressed Lawyer ",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.abajournal.com/web/article/as-lawyer-stress-escalates-during-pandemic-lap-agencies-see-significant-increase-in-calls",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "American Bar Association",
                                  subtext:
                                      "Lawyers' stress escalates during pandemic,",
                                  subsubtext:
                                      "agencies see significant increase in calls",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.mlaglobal.com/en-sg/insights/articles/its-time-to-talk-about-mental-health-in-asias-legal-industry?byconsultantorauthor=olivia-seet",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "MLA Global",
                                  subtext:
                                      "It’s Time to Talk About Mental Health",
                                  subsubtext: "in Asia's Legal Industry ",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.lawsocietysa.asn.au/LSSA/Lawyers/Publications/Articles/Lawyers_must_be_more_open_about_mental_health.aspx",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Law Society Australia",
                                  subtext: "Lawyers must be more open",
                                  subsubtext: "about mental health",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.ibanet.org/Mental-wellbeing-in-the-legal-profession",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "International Bar Association",
                                  subtext:
                                      "Mental wellbeing in the legal profession",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.mcca.com/mcca-article/mental-health-in-the-legal-profession/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Corporate Counsel Association",
                                  subtext:
                                      "Mental Health in the Legal Profession",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
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
                        title: "Self-Care",
                        boarder: dirtyDarkBrown.withOpacity(0.6),
                        fill: dirtyDarkBrown.withOpacity(0.85),
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
                                    "https://www.healthhub.sg/programmes/170/StayWell#activities-schedule",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Ministry of Health",
                                  subtext: "Programmes to Kickstart your",
                                  subsubtext: " Healthy Habits",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.mindful.org/how-to-meditate/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Mindful",
                                  subtext: "How to Meditate",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://chopracentermeditation.com/?sso_code=eyJpdiI6IjdcL3B4VWpTMjNUWHN5TnEwblpoTkZnPT0iLCJ2YWx1ZSI6IkRHWjNBXC9Fa0xYbGZuOVJqU3pFXC9XVCt0U3FcL3hDS21LaGF5TzYrbTNcL292RTZXTXJPOCtvZzJQaHg3ZHJOcWRjRlhncnJkU3ZMbGFtcmFcLytScUFOTmZOdFRpM0FXeW9jSE1RRHZ0TzlRVGc9IiwibWFjIjoiZjQ5NmVlNWQ3MzBmMDgzMWQyOGQwYzg1NjgwNTc0NmQ0YzI1NWE4OWQ2MDBmM2EyMTMzNDMwN2ExNDUxNDViMyJ9",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Chopra",
                                  subtext: "21-Day Meditation Experience on",
                                  subsubtext: "Finding Hope in Uncertain Times",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.imh.com.sg/wellness/page.aspx?id=550",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Institute of Mental Health",
                                  subtext: "Positive Thinking",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.imh.com.sg/wellness/page.aspx?id=1520",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Institute of Mental Health",
                                  subtext: "Mindfulness",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.cgh.com.sg/centres-services/tracs/PublishingImages/Pages/Coping With Covid19/Out Of Sight But Not Out Of Mind.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Changi General Hospital",
                                  subtext: "Different Coping Strategies to",
                                  subsubtext: "Improve your Mental Well-Being",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.samhealth.org.sg/understanding-mental-health/what-is-mental-wellness/the-art-of-relaxation/#relaxation-help",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "SAM Health",
                                  subtext: "The Art of Relaxation",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://stayprepared.sg/mymentalhealth/my-daily-life/self-care/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Temasek Foundation",
                                  subtext: "Stay Prepared: Self-Care Reads",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.cgh.com.sg/centres-services/tracs/Pages/Relaxation-Exercises.aspx",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Changi General Hospital",
                                  subtext: "Guided Imagery for Relaxation",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
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
                        title: "Self assessments",
                        boarder: dirtyDarkBrown.withOpacity(0.6),
                        fill: dirtyDarkBrown.withOpacity(0.85),
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
                                    "https://stayprepared.sg/mymentalhealth/articles/keep-calm-and-take-the-anxiety-test/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Anxiety Test",
                                  subtext:
                                      "The General Anxiety Disorder (GAD) Scale",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://stayprepared.sg/mymentalhealth/articles/depression-test/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Depression Test",
                                  subtext: "The Patient Health Questionnaire-9",
                                  subsubtext: "(PHQ-9)",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.psytoolkit.org/cgi-bin/3.3.2/survey?s=A4fYA",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Depression Test",
                                  subtext:
                                      "The Depression Anxiety Stress Scales-21",
                                  subsubtext: "(DASS-21)",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "http://www.valueoptions.com/providers/Education_Center/Provider_Tools/Depression_Screening.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Depression Test",
                                  subtext:
                                      "The Center for Epidemiological Studies",
                                  subsubtext: "Depression (CES-D) Scale",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch("https://auditscreen.org/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Alcohol Dependence Test",
                                  subtext: "The Alcohol Use Disorder",
                                  subsubtext: "Identification Test",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://monkeypuzzletraining.co.uk/free-downloads/Burnout-Self-Test-Inventory(MBI).pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Burn Out Test",
                                  subtext:
                                      "The Maslach Burnout Inventory (MBI)",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.462.4931&rep=rep1&type=pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Burn Out Test",
                                  subtext: "Oldenburg Burnout Inventory (OBI)",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.gallup.com/access/323333/q12-employee-engagement-survey.aspx",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Work Engagement Test",
                                  subtext: "Work engagement Gallup’s Q12",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.cbs.dk/files/cbs.dk/executive_summary_6.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Work Engagement Test",
                                  subtext:
                                      "Utrecht Work Engagement Scale (UWES)",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "http://www.peggykern.org/uploads/5/6/6/7/56678211/workplace_perma_profiler_102014.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Well-being Test",
                                  subtext: "Overall Well-Being Workplace",
                                  subsubtext: "PERMA Profiler",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://umatter.princeton.edu/sites/umatter/files/media/princeton-umatter-wellness-self-assessment.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Well-being Test",
                                  subtext:
                                      "Princeton Wellness Self-Assessment ",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://ogg.osu.edu/media/documents/MB Stream/Brief Resilience Scale.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Resilience Test",
                                  subtext: "Resilience Brief Resilience Scale ",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "http://www.michaelfsteger.com/wp-content/uploads/2012/08/WAMI.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Meaninging Work Test",
                                  subtext:
                                      "The Work and Meaning Inventory (WAMI)",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.cmu.edu/dietrich/psychology/pdf/scales/LOTR_Scale.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Optimism Test",
                                  subtext:
                                      "Optimism Life Orientation Scale-Revised",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
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
                        title: "Stress",
                        boarder: dirtyDarkBrown.withOpacity(0.6),
                        fill: dirtyDarkBrown.withOpacity(0.85),
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
                                onTap: () => launch(
                                    "https://www.mayoclinic.org/healthy-lifestyle/stress-management/in-depth/stress-symptoms/art-20050987",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Mayo Clinic",
                                  subtext: "Stress symptoms: Effects on your",
                                  subsubtext: "body and behavior",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.imh.com.sg/wellness/page.aspx?id=558",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Institute of Mental Health",
                                  subtext: "Overcoming Stress",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.gov.sg/article/tips-for-battling-stress-and-anxiety-during-covid-19",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Gov SG",
                                  subtext:
                                      "Tips for Battling Stress and Anxiety",
                                  subsubtext: "during COVID-19",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                            ],
                          )
                        : new Container(),
                    SizedBox(height: size.height * 0.02),
                    InkWell(
                      onTap: () => visibility_fifthbar
                          ? _changed(false, "fifthbar")
                          : _changed(true, "fifthbar"),
                      child: Popup(
                        //image: "assets/images/helping-hand.png",
                        topheaderfontsize: 19,
                        maxwidth: "1.13",
                        maxheight: "10",
                        title: "Burn Out",
                        boarder: dirtyDarkBrown.withOpacity(0.6),
                        fill: dirtyDarkBrown.withOpacity(0.85),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(
                            visibility_fifthbar
                                ? Icons.cancel_outlined
                                : Icons
                                    .add, //if visible show the X else show a +
                            size: 23.0,
                          ),
                          onPressed: () {
                            visibility_fifthbar
                                ? _changed(false, "fifthbar")
                                : _changed(true, "fifthbar");
                            //_changed(false, "obs");
                          },
                        ),
                      ),
                    ),
                    visibility_fifthbar
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.mayoclinic.org/healthy-lifestyle/adult-health/in-depth/burnout/art-20046642",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Mayo Clinic",
                                  subtext: "What is burn out",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://v1.lawgazette.com.sg/2017-08/1927.htm",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Law Gazette",
                                  subtext: "Navigating Professional Burnout:",
                                  subsubtext:
                                      "Practical Strategies for Legal Professionals",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.bbc.com/worklife/article/20200330-covid-19-how-to-learn-a-new-skill-in-coronavirus-quarantine",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "BBC News",
                                  subtext:
                                      "How to avoid burnout amid a pandemic",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://hbr.org/2020/04/3-tips-to-avoid-wfh-burnout",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Harvard Business Review",
                                  subtext: "3 Tips to Avoid WFH Burnout",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                            ],
                          )
                        : new Container(),
                    SizedBox(height: size.height * 0.02),
                    InkWell(
                      onTap: () => visibility_sixthbar
                          ? _changed(false, "sixthbar")
                          : _changed(true, "sixthbar"),
                      child: Popup(
                        //image: "assets/images/helping-hand.png",
                        topheaderfontsize: 19,
                        maxwidth: "1.13",
                        maxheight: "10",
                        title: "Anxiety",
                        boarder: dirtyDarkBrown.withOpacity(0.6),
                        fill: dirtyDarkBrown.withOpacity(0.85),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(
                            visibility_sixthbar
                                ? Icons.cancel_outlined
                                : Icons
                                    .add, //if visible show the X else show a +
                            size: 23.0,
                          ),
                          onPressed: () {
                            visibility_sixthbar
                                ? _changed(false, "sixthbar")
                                : _changed(true, "sixthbar");
                            //_changed(false, "obs");
                          },
                        ),
                      ),
                    ),
                    visibility_sixthbar
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.healthline.com/health/anxiety",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Healthline",
                                  subtext:
                                      "Everything you need to know about anxiety ",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.imh.com.sg/wellness/page.aspx?id=556",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Institute of Mental Health",
                                  subtext: "Overcoming Anxiety Disorders",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.blackdoginstitute.org.au/news/10-tips-for-managing-anxiety-during-covid-19/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Black Dog Institute",
                                  subtext: "10 tips for managing anxiety",
                                  subsubtext: " during COVID-19",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://theconversation.com/7-science-based-strategies-to-cope-with-coronavirus-anxiety-133207",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "The Conversation",
                                  subtext: "7 science-based strategies to cope",
                                  subsubtext: "with coronavirus anxiety",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                            ],
                          )
                        : new Container(),
                    SizedBox(height: size.height * 0.02),
                    InkWell(
                      onTap: () => visibility_sevenbar
                          ? _changed(false, "sevenbar")
                          : _changed(true, "sevenbar"),
                      child: Popup(
                        //image: "assets/images/helping-hand.png",
                        topheaderfontsize: 19,
                        maxwidth: "1.13",
                        maxheight: "10",
                        title: "More Resource Database",
                        boarder: dirtyDarkBrown.withOpacity(0.6),
                        fill: dirtyDarkBrown.withOpacity(0.85),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(
                            visibility_sevenbar
                                ? Icons.cancel_outlined
                                : Icons
                                    .add, //if visible show the X else show a +
                            size: 23.0,
                          ),
                          onPressed: () {
                            visibility_sevenbar
                                ? _changed(false, "sevenbar")
                                : _changed(true, "sevenbar");
                            //_changed(false, "obs");
                          },
                        ),
                      ),
                    ),
                    visibility_sevenbar
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.americanbar.org/groups/lawyer_assistance/resources/covid-19--mental-health-resources/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "American Bar Association",
                                  subtext: "Mental Health Resources for the",
                                  subsubtext: "Legal Profession",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.imh.com.sg/wellness/page.aspx?id=356",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Institute of Mental Health",
                                  subtext: "Understanding Your Mental Health",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://stayprepared.sg/mymentalhealth/",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Temasek Foundation",
                                  subtext: "Stayprepared: My Mental Health",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              InkWell(
                                onTap: () => launch(
                                    "https://www.aic.sg/resources/Documents/Brochures/Mental Health/MH E-Booklet COVID19.pdf",
                                    forceWebView: false),
                                child: TextFiller(
                                  //tags: false,
                                  titleclor: Colors.black,
                                  maxheight: "7.3",
                                  maxwidth: "1.4",
                                  title: "Agency for Integrated Care",
                                  subtext: "Mental Health In Time of COVID-19 ",
                                  subsubtext: "",
                                  boarder: dirtyLightBrown.withOpacity(0.7),
                                  fill: dirtyLightBrown.withOpacity(0.9),
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
