import 'package:flutter/material.dart';
import 'package:luman/Individual/chat.dart';

class HelptbotPage extends StatelessWidget {
  const HelptbotPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chat(),
    );
  }
}
