import 'package:flutter/material.dart';
import 'package:luman/Individual/healthpage.dart';

class HealthPage extends StatelessWidget {
  //final username;
  const HealthPage({
    Key? key,
    //required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Health(),
    );
  }
}
