import 'package:flutter/material.dart';
import 'package:luman/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  final bool innerPage;
  final bool pinkbg;
  const Background({
    Key? key,
    required this.child,
    required this.innerPage,
    required this.pinkbg,
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
              innerPage
                  ? "assets/images/innerbg.jpg"
                  : pinkbg
                      ? "assets/images/pinkbg.jpg"
                      : "assets/images/resourcesbg.jpg", // Background image is here checking if lightmode is activated
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
