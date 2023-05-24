import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.text,
    this.onPressed,
    required this.color,
  });
  final String text;
  final void Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w500,
          color: color,
        ),
      ),
    );
  }
}
