import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/profile_constants/text_style/app_text_style.dart';

class ShowModalBottomSheet {
  static Future<dynamic> modalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 25),
                child: Row(
                  children: [
                    Text(
                      'Аватарды озгортуу',
                      style: AppTextStyle.f22w500,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/svg/camera.svg'),
                    const SizedBox(width: 20),
                    SvgPicture.asset('assets/svg/galery.svg'),
                    const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SvgPicture.asset('assets/svg/delete.svg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
