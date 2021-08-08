import 'package:flutter/material.dart';
import 'package:luman/Pages/text_field.dart';
import 'package:luman/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: passIconColor,
          ),
          /*
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),*/
          border: InputBorder.none,
        ),
      ),
    );
  }
}
