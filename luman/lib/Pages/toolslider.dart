import 'package:flutter/material.dart';
import 'package:luman/Individual/chatbotentry.dart';
import 'package:luman/Individual/forums.dart';
import 'package:luman/Individual/helplinesentry.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/homepagetextimagefiller.dart';

class ToolSlider extends StatelessWidget {
  //final ValueChanged<String> onChanged;
  final username;
  const ToolSlider({
    Key? key,
    required this.username,
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
                    return HelpLinesPage();
                  },
                ),
              );
            }, // handle your onTap here, // handle your onTap here
            child: TextImageFiller(
              image: "assets/images/helping-hand.png",
              title: "Helplines",
              subtext: "Find the help",
              subsubtext: "you need!",
              boarder: pastelBlue.withOpacity(0.6),
              fill: pastelBlue.withOpacity(0.7),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Forums(username);
                  },
                ),
              );
            }, // handle your onTap here
            child: TextImageFiller(
              image: "assets/images/question.png",
              title: "Forums",
              subtext: "Questions &",
              subsubtext: "answers!",
              boarder: dirtyIndigo.withOpacity(0.6),
              fill: dirtyIndigo.withOpacity(0.6),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: TextImageFiller(
              image: "assets/images/toilet-paper.png",
              title: "HelpBot",
              subtext: "Interact with",
              subsubtext: "Lawlo!",
              boarder: pastelGreen.withOpacity(0.7),
              fill: pastelGreen.withOpacity(0.7),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ChatbotPage();
                  },
                ),
              );
            }, // handle your onTap here
            child: TextImageFiller(
              image: "assets/images/network.png",
              title: "ChatBot",
              subtext: "Connect with",
              subsubtext: "others!",
              boarder: dirtyGrey2.withOpacity(0.7),
              fill: dirtyGrey2.withOpacity(0.65),
            ),
          ),
        ],
      ),
    );
  }
}
