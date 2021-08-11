import 'package:flutter/material.dart';
import 'package:luman/Welcome/text_field.dart';
import 'package:luman/constants.dart';

class RoundedemailField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedemailField({
    Key? key,
    required this.hintText,
    this.icon = Icons.mail,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: emailIconColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
