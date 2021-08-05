import 'package:flutter/material.dart';
import 'package:luman/Pages/entry.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Luman',
      theme: ThemeData(
        primaryColor: Color(0xFFF1E6FF),
        scaffoldBackgroundColor: Colors.pink[100],
      ),
      home: WelcomeScreen(),
    );
  }
}
