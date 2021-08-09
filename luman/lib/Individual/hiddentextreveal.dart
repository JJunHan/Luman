import "package:flutter/material.dart";
import 'package:luman/Individual/helplinesbg.dart';
import 'package:luman/Pages/innerpagepopup.dart';
import 'package:luman/Pages/innerpagetextfiller.dart';
import 'package:luman/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpLine extends StatefulWidget {
  @override
  HelpLineState createState() => new HelpLineState();
}

class HelpLineState extends State<HelpLine> {
  bool visibilityTag = false;
  bool visibility_firstbar = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "firstbar") {
        visibility_firstbar = visibility;
      }
      if (field == "tag") {
        visibilityTag = visibility;
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
            child: Column(
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
                  "get know yourself better!",
                  style: TextStyle(
                    fontFamily: "open sans",
                    fontSize: size.width / 22,
                    color: Colors.white,
                    //fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                InkWell(
                  onTap: () =>
                      visibility_firstbar ? null : _changed(true, "obs"),
                  child: Popup(
                    //image: "assets/images/helping-hand.png",
                    maxwidth: "1",
                    title: "What is your work personality?",
                    subtext: "Find out which animal you are at work and",
                    subsubtext: "how you communicate in the workplace",
                    boarder: dirtyRed.withOpacity(0.6),
                    fill: dirtyRed.withOpacity(0.6),
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(
                        visibility_firstbar
                            ? Icons.cancel_outlined
                            : Icons.add, //if visible show the X else show a +
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
                          Popup(
                            maxwidth: "1.25",
                            //image: "assets/images/helping-hand.png",
                            title: "What is ?",
                            subtext: "Find out which ",
                            subsubtext: "how you ",
                            boarder: pastelPink.withOpacity(0.5),
                            fill: pastelPink.withOpacity(0.6),
                            child: Container(),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Popup(
                            maxwidth: "1.25",
                            //image: "assets/images/helping-hand.png",
                            title: "What is ?",
                            subtext: "Find out which ",
                            subsubtext: "how you ",
                            boarder: pastelPink.withOpacity(0.5),
                            fill: pastelPink.withOpacity(0.6),
                            child: Container(),
                          ),
                        ],
                      )
                    : new Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
