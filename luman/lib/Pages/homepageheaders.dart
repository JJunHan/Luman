import 'package:flutter/material.dart';
import 'package:luman/constants.dart';

class homepageHeaders extends StatelessWidget {
  //final ValueChanged<String> onChanged;
  final String text;
  final VoidCallback press;
  const homepageHeaders({
    Key? key,
    //required this.onChanged,
    required this.press,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int sizeofText = text.length;
    return Row(
      children: <Widget>[
        Container(
          width: size.width - size.width * 0.10,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(
            //adjust position of Welcome User here
            left: size.width * 0.10,
            top: size.height * 0.05,
          ),
          //padding: EdgeInsets.(10.0), //this is for internal padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                this.text,
                style: TextStyle(
                  fontFamily: "open sans",
                  fontSize: size.width / 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //SizedBox(width: size.width * 0.2 - sizeofText),
              GestureDetector(
                onTap: press,
                child: Text(
                  "See more\t\t\t\t\t\t\t\t\t",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: "open sans",
                    fontSize: size.width / 26,
                    color: Colors.white,

                    //fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              //SizedBox(width: size.width * 0.02),
            ],
          ),
        ),
      ],
    );
  }
}
