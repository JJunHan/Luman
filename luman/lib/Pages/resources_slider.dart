import 'package:flutter/material.dart';
import 'package:luman/Individual/employersentry.dart';
import 'package:luman/Individual/officeentry.dart';
import 'package:luman/Individual/storiesentry.dart';
import 'package:luman/Individual/updatesentry.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/homepagetextimagefiller.dart';

class ResourcesSlider extends StatelessWidget {
  //final ValueChanged<String> onChanged;
  const ResourcesSlider({
    Key? key,
    //required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
          left: size.width * 0.075,
          right: size.width * 0.075,
          top: size.width * 0.03),
      height: size.height / 6.2,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
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
              fill: dirtyRed.withOpacity(0.5),
            ),
            /*//add bg
              child: Stack(
                alignment: Alignment.center, // FOR THE TEXT
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/innerbg.jpg", // Background image is here checking if lightmode is activated
                      width: size.width,
                      height: size.height,
                      fit: BoxFit.fill,
                    ),
                  ),
                  //Positioned(),
                  Text(
                    "Real Stories",
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              */
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: TextImageFiller(
              image: "assets/images/gazette.png",
              title: "Articles",
              subtext: "Good Cov-19",
              subsubtext: "reads!",
              boarder: dirtyTeal.withOpacity(0.3),
              fill: dirtyTeal.withOpacity(0.60),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            //UpdatesPage
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
              fill: dirtyGreen.withOpacity(0.50),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: TextImageFiller(
              image: "assets/images/calm.png",
              title: "Health",
              subtext: "Mental health",
              subsubtext: "resources!",
              boarder: pastelYellow.withOpacity(0.4),
              fill: pastelYellow.withOpacity(0.5),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
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
            //EmployerPage
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
              boarder: dirtyGrey.withOpacity(0.43),
              fill: dirtyGrey.withOpacity(0.60),
            ),
          ),
        ],
      ),
    );
  }
}
