import 'package:flutter/material.dart';
import 'package:luman/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  final bool innerPage;
  const Background({
    Key? key,
    required this.child,
    required this.innerPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center, // FOR THE TEXT
        children: <Widget>[
          Positioned(
            child: Image.asset(
              innerPage
                  ? "assets/images/bg2.jpg"
                  : "assets/images/bg.png", //lumen words are shifted up
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
