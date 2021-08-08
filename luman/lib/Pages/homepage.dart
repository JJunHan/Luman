import 'package:flutter/material.dart';
import 'package:luman/Pages/homepagebg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luman/constants.dart';

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
          //mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: size.width,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                  //adjust position of Welcome User here
                  left: 30,
                  top: 45),
              //padding: EdgeInsets.(10.0), //this is for internal padding
              child: Text(
                "Welcome " + username,
                style: TextStyle(
                  fontFamily: "Courier",
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //SizedBox(height: size.height * 0.25),
            //SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
