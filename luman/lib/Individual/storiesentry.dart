import 'package:flutter/material.dart';
import 'package:luman/Individual/storiespage.dart';

class StoriesPage extends StatelessWidget {
  //final username;
  const StoriesPage({
    Key? key,
    //required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
