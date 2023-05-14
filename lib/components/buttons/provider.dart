import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import 'genderprovider.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';


class NotifierProvider extends StatelessWidget {
  const NotifierProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GenderProvider(),
      child: Consumer<GenderProvider>(
        builder: (context, genderProvider, _) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                genderProvider.setGender = true;
              },
              child: Container(
                  width: 125,
                  height: 145,
                  decoration: genderProvider.getGender
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: const Color(0xff3473E6),
                              width: 1.3),
                        )
                      : null,
                  padding: const EdgeInsets.all(12),
                  child: Assets.png.erkek1.image()),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {
                genderProvider.setGender = false;
              },
              child: Container(
                width: 125,
                height: 145,
                decoration: genderProvider.getGender
                    ? null
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: const Color(0xff3473E6),
                            width: 1.3),
                      ),
                padding: const EdgeInsets.all(12),
                child: Assets.png.ayal1.image(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}