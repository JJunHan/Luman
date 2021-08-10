import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:luman/constants.dart';

class Popup extends StatelessWidget {
  //final ValueChanged<String> onChanged;
  final Widget child;
  final String title;
  final Color boarder;
  final Color fill;
  final String maxwidth;
  final String maxheight;
  final int topheaderfontsize;
  const Popup({
    Key? key,
    //required this.onChanged,
    required this.title,
    required this.boarder,
    required this.fill,
    required this.child,
    required this.maxwidth,
    required this.maxheight,
    required this.topheaderfontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width / double.parse(maxwidth),
      //height: size.height / 7.2,
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
                width: size.width * 0.05,
                //width: size.width * 0.01,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.030, //padding
                    //width: size.width * 0.05,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "open sans",
                      fontSize: size.width / topheaderfontsize,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    //height between title and subtext
                    height: size.height * 0.005,
                  ),
                  SizedBox(
                    //height between title and subtext
                    height: size.height * 0.001,
                  ),
                ],
              ),
              //SizedBox(width: size.width * 0.06),
              // Gap between image and words
              //SizedBox(width: size.width * 0),
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
              child,
            ],
          ),
        ],
      ),
    );
  }
}
