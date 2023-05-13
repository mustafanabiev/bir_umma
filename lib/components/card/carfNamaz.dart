import 'package:flutter/material.dart';

class CardNamaz extends StatelessWidget {
  const CardNamaz({
    super.key,
    required this.fonCard,
  });
  final Image fonCard;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 0,
      margin: const EdgeInsets.all(5),
      child: fonCard,
    );
  }
}
