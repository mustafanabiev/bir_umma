import 'package:bir_umma/constants/profile_constants/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class EmailPasswordFieldWidget extends StatelessWidget {
  const EmailPasswordFieldWidget({
    super.key,
    required this.text,
    this.suffixIcon,
    this.obscureText,
  });
  final String text;
  final IconButton? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: text,
          hintStyle: AppTextStyle.f20w0,
        ),
      ),
    );
  }
}
