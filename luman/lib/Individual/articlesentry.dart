import 'package:flutter/material.dart';
import 'package:luman/Individual/articlespage.dart';

class ArticlesPage extends StatelessWidget {
  //final username;
  const ArticlesPage({
    Key? key,
    //required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Articles(),
    );
  }
}
