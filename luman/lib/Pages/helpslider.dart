import 'package:flutter/material.dart';
import 'package:luman/constants.dart';
import 'package:luman/Pages/snakegame.dart';
import 'package:luman/Pages/homepagetextimagefiller.dart';

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
            child: TextImageFiller(
              image: "assets/images/snake.png",
              title: "Games",
              subtext: "Have some",
              subsubtext: "fun!",
              boarder: dirtyBlueGrey.withOpacity(0.6),
              fill: dirtyBlueGrey.withOpacity(0.9),
            ),
          ),
          SizedBox(width: size.width * 0.045),
          InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: TextImageFiller(
              image: "assets/images/idea.png",
              title: "Quizzes",
              subtext: "Know yourself",
              subsubtext: "better!",
              boarder: dirtyBrown.withOpacity(0.6),
              fill: dirtyBrown.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
