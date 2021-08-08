import 'package:flutter/material.dart';
import 'package:luman/Pages/homepagebg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/resources_slider.dart';
import 'package:luman/Pages/homepageheaders.dart';

class Body extends StatelessWidget {
  final username;
  const Body({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      //this is from homepagebg
      innerPage: true,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Start of Hello User
            Container(
              //width: size.width,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                  //adjust position of Welcome User here
                  left: size.width * 0.10,
                  top: size.height * 0.10),
              //padding: EdgeInsets.(10.0), //this is for internal padding
              child: Text(
                "Hello " + username + ",",
                style: TextStyle(
                  fontFamily: "open sans",
                  fontSize: size.width / 13,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            homepageHeaders(
              text: "Resources just for you",
            ),

            ResourcesSlider(
                //onChanged: "holder",
                ),

            //SizedBox(height: size.height * 0.25),
            //SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
