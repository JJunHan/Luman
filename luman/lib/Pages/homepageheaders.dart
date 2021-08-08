import 'package:flutter/material.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/loginentry.dart';

class homepageHeaders extends StatelessWidget {
  //final ValueChanged<String> onChanged;
  final text;
  const homepageHeaders({
    Key? key,
    //required this.onChanged,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: <Widget>[
        Container(
          //width: size.width,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(
            //adjust position of Welcome User here
            left: size.width * 0.10,
            top: size.height * 0.06,
          ),
          //padding: EdgeInsets.(10.0), //this is for internal padding
          child: Row(
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
              SizedBox(width: size.width * 0.2),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen(); // Change this
                      },
                    ),
                  );
                },
                child: Text(
                  "See more",
                  style: TextStyle(
                    fontFamily: "open sans",
                    fontSize: size.width / 26,
                    color: Colors.white,
                    //fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
