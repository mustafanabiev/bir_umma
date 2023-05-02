// import 'dart:ui';

import 'package:bir_umma/modules/home/view/first_page.dart';
import 'package:bir_umma/modules/home/view/second_page.dart';
import 'package:bir_umma/modules/home/view/third_page.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          FirstPage(
            onTap: () => controller.jumpToPage(1),
          ),
          SecondPage(
            onPressed: () => controller.jumpToPage(0),
            onTap: () => controller.jumpToPage(2),
          ),
          ThirdPage(
            onPressed: () => controller.jumpToPage(1),
          )
        ],
      ),
    );
  }
}
