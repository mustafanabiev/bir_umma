import 'package:bir_umma/modules/zikir/view/statika_page.dart';
import 'package:bir_umma/modules/zikir/view/zikir_static_page.dart';

import 'package:flutter/material.dart';

class ZikirView extends StatelessWidget {
  ZikirView({Key? key}) : super(key: key);
  final PageController controller =
      PageController(initialPage: 0, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          StatikaPage(
            onTap: () => controller.jumpToPage(1),
          ),
          ZikirStaticPage(
            onPressed: () => controller.jumpToPage(0),
            onTap: () => controller.jumpToPage(0),
          ),
        ],
      ),
    );
  }
}
