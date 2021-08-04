import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryLightColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            primary: Colors.white,
            backgroundColor: color,
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
