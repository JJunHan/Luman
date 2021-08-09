import 'package:flutter/material.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/snakegame.dart';

class HelpSlider extends StatelessWidget {
  //final ValueChanged<String> onChanged;
  const HelpSlider({
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
                    return SnakeGame(); // Change this
                  },
                ),
              );
            }, // handle your onTap here
            child: Container(
              width: size.width / 2.5,
              //color: Colors.red[100],
              decoration: BoxDecoration(
                border: Border.all(
                  color: dirtyBlueGrey.withOpacity(0.6),
                ),
                color: dirtyBlueGrey.withOpacity(0.9),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Stack(
                alignment: Alignment.center, // FOR THE TEXT
                children: <Widget>[
                  //Positioned(),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: size.height * 0.05,
                            width: size.width * 0.05,
                          ),
                          Text(
                            "Games",
                            style: TextStyle(
                              fontFamily: "open sans",
                              fontSize: size.width / 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.001,
                            //width: size.width * 0.05,
                          ),
                          Text(
                            "Have fun!",
                            style: TextStyle(
                              fontFamily: "open sans",
                              fontSize: size.width / 28,
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.06),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/snake.png", // Background image is here checking if lightmode is activated
                          //width: size.width * 0.15,
                          //height: size.height * 0.1,
                          fit: BoxFit.fill,
                          scale: 10,
                        ),
                      ),
                    ],
                  ),
                ],
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
                  color: dirtyBrown.withOpacity(0.6),
                ),
                color: dirtyBrown.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
