import 'package:flutter/material.dart';
import 'package:luman/constants.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topLeft, // FOR THE TEXT
        children: <Widget>[
          Positioned(
            child: Image.asset(
              "assets/images/updatesbg.jpg", // Background image is here checking if lightmode is activated
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          /*Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/test.png",
              width: size.width * 0.2,
            ),
          ), */
          child,
        ],
      ),
    );
  }
}
