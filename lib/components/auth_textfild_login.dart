import 'package:flutter/material.dart';

class MyTextFilds extends StatelessWidget {
  final String hintext;
  final Icon icons;
  final icon;

  const MyTextFilds({
    Key? key,
    required this.hintext,
    required this.icons,
    required this.usernameController,
    this.icon,
  }) : super(key: key);

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: hintext,
                icon: icons,
                suffixIcon: icon,
              ),
              obscureText: false,
            ),
          ),
        ),
      ],
    );
  }
}
