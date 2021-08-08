import 'package:flutter/material.dart';
import 'package:luman/constants.dart';

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
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              width: size.width / 2.5,
              //color: Colors.red[100],
              decoration: BoxDecoration(
                border: Border.all(
                  color: dirtyRed.withOpacity(0.5),
                ),
                color: dirtyRed.withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: <Widget>[],
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
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              width: size.width / 2.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: dirtyWhite.withOpacity(0.5),
                ),
                color: dirtyWhite.withOpacity(0.65),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              width: size.width / 2.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: dirtyGreen.withOpacity(0.45),
                ),
                color: dirtyGreen.withOpacity(0.50),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              width: size.width / 2.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: pastelYellow.withOpacity(0.4),
                ),
                color: pastelYellow.withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              width: size.width / 2.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: dirtyPurple.withOpacity(0.7),
                ),
                color: dirtyPurple.withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              width: size.width / 2.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: dirtyGrey.withOpacity(0.43),
                ),
                color: dirtyGrey.withOpacity(0.60),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
