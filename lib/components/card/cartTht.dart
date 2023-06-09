import 'package:flutter/material.dart';

import '../../constants/color.dart';

class CardThne extends StatelessWidget {
  const CardThne({
    Key? key,
    required this.thne,
    required this.padding,
    this.color,
  }) : super(key: key);
  final String thne;
  final EdgeInsetsGeometry padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                thne,
                style: TextStyle(
                    fontSize: 21, color: color, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Padding(
            padding: padding,
            child: const Divider(
              color: Appcolors.dividerCr,
              thickness: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
