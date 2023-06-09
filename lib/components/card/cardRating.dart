import 'package:flutter/material.dart';

import '../../constants/color.dart';

class CardRating extends StatelessWidget {
  const CardRating({
    Key? key,
    required this.data1,
    required this.width,
    required this.color,
    this.child,
  }) : super(key: key);

  final String data1;
  final double? width;
  final Color? color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 380,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Appcolors.zrcard,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(7, 10, 0, 60),
                      child: Text(
                        data1,
                        style: TextStyle(
                            color: color,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Аты жөнү',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Text(
                          '123456',
                          style: TextStyle(
                              color: Appcolors.zknumberCr,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 35,
                          width: 100,
                          child: child,
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Appcolors.green,
                    ),
                    SizedBox(width: width),
                    Image.asset(
                      'assets/png/user.png',
                      height: 90,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
