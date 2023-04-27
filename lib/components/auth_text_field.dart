import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final Icon icons;
  final suffixIcon;
  const AuthTextField(
      {Key? key,
      required this.labelText,
      required this.obscureText,
      required this.icons,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
                fontSize: 18),
            icon: icons,
            hoverColor: Colors.white,
            suffixIcon: suffixIcon),
      ),
    );
  }
}
