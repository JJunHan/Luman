import 'package:flutter/material.dart';
import 'package:luman/Individual/hiddentextreveal.dart';

class HelpLinesPage extends StatelessWidget {
  //final username;
  const HelpLinesPage({
    Key? key,
    //required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HelpLine(),
    );
  }
}
