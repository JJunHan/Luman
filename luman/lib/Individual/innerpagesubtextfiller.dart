import 'package:flutter/material.dart';
import 'package:luman/constants.dart';

class SubTextFiller extends StatelessWidget {
  //final ValueChanged<String> onChanged;

  final String title;
  final String subtext;
  final Color boarder;
  final Color fill;
  final String subsubtext;
  final String subsubsubtext;
  final String subsubsubsubtext;
  final String maxwidth;
  final String maxheight;
  final bool tags;
  const SubTextFiller({
    Key? key,
    //required this.onChanged,
    required this.title,
    required this.subtext,
    required this.boarder,
    required this.fill,
    required this.subsubtext,
    required this.subsubsubtext,
    required this.subsubsubsubtext,
    required this.maxwidth,
    required this.maxheight,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width / double.parse(maxwidth),
      height: size.height / double.parse(maxheight),
      //color: Colors.red[100],
      decoration: BoxDecoration(
        border: Border.all(
          color: boarder,
        ),
        color: fill,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Stack(
        alignment: Alignment.center, // FOR THE TEXT
        children: <Widget>[
          //Positioned(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Gap from left side
              SizedBox(
                width: size.width * 0.01,
                //width: size.width * 0.01,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.020, //padding
                    //width: size.width * 0.05,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 21,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    //height between title and subtext
                    height: size.height * 0.005,
                  ),
                  Text(
                    subtext,
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 28,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    //height between title and subtext
                    height: size.height * 0.001,
                  ),
                  Text(
                    subsubtext,
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 28,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subsubsubtext,
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 28,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subsubsubsubtext,
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / 28,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: size.height * 0.005),
                  tags
                      ? Row(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 20,
                              //color: Colors.red[100],
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: boarder,
                                ),
                                color: fill,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Text(
                                "hello",
                                style: TextStyle(
                                  fontFamily: "open sans",
                                  fontSize: size.width / 25,
                                  color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      : SizedBox(),
                ],
              ),
              //SizedBox(width: size.width * 0.06),
              // Gap between image and words
              SizedBox(width: size.width * 0.01),
              /*
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image, // Background image is here checking if lightmode is activated
                  //width: size.width * 0.15,
                  //height: size.height * 0.1,
                  fit: BoxFit.fill,
                  scale: 10,
                ),
              ),
              */
            ],
          ),
        ],
      ),
    );
  }
}
