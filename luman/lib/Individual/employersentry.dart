import 'package:flutter/material.dart';
import 'package:luman/Individual/employerpage.dart';

class EmployerPage extends StatelessWidget {
  //final username;
  const EmployerPage({
    Key? key,
    //required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Employer(),
    );
  }
}
