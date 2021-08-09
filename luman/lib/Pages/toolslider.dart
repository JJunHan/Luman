import 'package:flutter/material.dart';
import 'package:luman/constants.dart';

class ToolSlider extends StatelessWidget {
  //final ValueChanged<String> onChanged;
  const ToolSlider({
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
                  color: pastelBlue.withOpacity(0.7),
                ),
                color: pastelBlue.withOpacity(0.7),
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
                  color: dirtyIndigo.withOpacity(0.6),
                ),
                color: dirtyIndigo.withOpacity(0.7),
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
                  color: pastelGreen.withOpacity(0.7),
                ),
                color: pastelGreen.withOpacity(0.7),
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
                  color: dirtyGrey2.withOpacity(0.7),
                ),
                color: dirtyGrey2.withOpacity(0.9),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}