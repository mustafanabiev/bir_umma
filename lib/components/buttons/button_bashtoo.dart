import 'package:flutter/material.dart';

class ButtonBshtoo extends StatelessWidget {
  const ButtonBshtoo({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xfff3473E6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 100.0, vertical: 12.0),
      ),
      child: const Text(
        'Баштоо',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
