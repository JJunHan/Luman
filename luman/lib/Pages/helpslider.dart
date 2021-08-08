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
