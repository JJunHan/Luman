import 'package:flutter/material.dart';
import 'package:luman/Welcome/text_field.dart';
import 'package:luman/constants.dart';

class RoundedInputFieldForum extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final Widget icon2;
  final TextEditingController controller1;
  const RoundedInputFieldForum({
    Key? key,
    required this.hintText,
    this.icon = Icons.question_answer,
    required this.onChanged,
    required this.icon2,
    required this.controller1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: cursorColor,
        controller: controller1,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: userIconColor,
          ),
          suffixIcon: icon2,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
