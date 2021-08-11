import 'package:flutter/material.dart';
import 'package:luman/Backgrounds/storiesbg.dart';
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  //adjust position of Welcome User here
                  left: size.width * 0.008,
                  top: size.height * 0.15),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Real Stories",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "it's really okay to not be okay",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 22,
                      color: Colors.white,
                      //fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  InkWell(
                    onTap: () => launch(
                        "https://www.todayonline.com/commentary/it-okay-not-be-okay-lawyers-take-his-mental-wellness-during-covid-19",
                        forceWebView: false), // forceWebView: true
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories2.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.25,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                      "https://lawgazette.com.sg/lifestyle/alter-ego/me-first/",
                    ), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories1.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://mothership.sg/2019/12/singaporean-lawyer-with-schizophrenia-interview/"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories3.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawyerswithdepression.com/articles/true-stories-an-attorney-shares-his-journey-through-depression-before-covid-and-now/"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories4.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawcare.org.uk/stories/jonathan-de-lance-holmes"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories5.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawcare.org.uk/stories/how-i-coped-with-anxiety"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories6.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawyerswithdepression.com/articles/true-stories-depression-sucks-its-lonely-too/"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories7.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawcare.org.uk/stories/my-experience-of-returning-to-work-after-mental-illness-video"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories8.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawyerswithdepression.com/articles/true-stories-a-lawyer-tells-all-about-his-traumatic-childhood-drinking-depression-and-recovery/"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories9.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawcare.org.uk/stories/my-experiences-with-mental-health-in-the-legal-workplace-by-paula-dillon"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories10.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawcare.org.uk/stories/how-i-coped-with-depression"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories11.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawyerswithdepression.com/articles/true-stories-a-woman-lawyer-speaks-up-about-her-anxiety/"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories12.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawcare.org.uk/stories/my-experiences-with-stress-video"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories13.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawcare.org.uk/stories/my-experiences-with-depression"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories14.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawcare.org.uk/stories/how-i-coped-with-alcohol-dependence"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories15.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://www.lawcare.org.uk/stories/recovering-from-post-natal-depression"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories16.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  InkWell(
                    onTap: () => launch(
                        "https://thetapestryproject.sg/mental-health/tapestry-stories/"), // handle your onTap here
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/stories17.jpg", // Background image is here checking if lightmode is activated
                        //width: size.width,
                        //height: size.height * 0.21,
                        fit: BoxFit.fill,
                        //scale: 1,
                      ),
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
