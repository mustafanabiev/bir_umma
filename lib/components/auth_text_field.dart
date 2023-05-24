import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final Widget prefixIcon;
  final suffixIcon;

  const AuthTextField({
    Key? key,
    required this.labelText,
    required this.obscureText,
    required this.suffixIcon,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          alignLabelWithHint: true,
          labelStyle: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w400,
              fontSize: 19),
          hoverColor: Colors.white,
          suffixIcon: suffixIcon,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: prefixIcon,
          ),
        ),
      ),
    );
  }
}
