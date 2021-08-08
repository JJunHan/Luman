import 'package:flutter/material.dart';
import 'package:luman/Pages/homepage.dart';

class HomePage extends StatelessWidget {
  final username;

  const HomePage({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        username: username, //pass into the body
      ),
    );
  }
}
