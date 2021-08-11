import 'package:flutter/material.dart';
import 'package:luman/Welcome/authemailpw.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmailPasswordForm(), //call authemailpw.dart
    );
  }
}
