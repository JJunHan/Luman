import 'package:flutter/material.dart';
import 'package:luman/Individual/officepage.dart';

class OfficePage extends StatelessWidget {
  //final username;
  const OfficePage({
    Key? key,
    //required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Office(),
    );
  }
}
