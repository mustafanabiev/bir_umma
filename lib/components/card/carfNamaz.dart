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
      child: fonCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
