import 'package:bir_umma/modules/home/view/Uch_namaz_page.dart';
import 'package:bir_umma/modules/home/view/besh_ubak_namaz.dart';
import 'package:bir_umma/modules/home/view/namaz_page.dart';
import 'package:bir_umma/modules/home/view/page_info.dart';
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
          NamazPage(
            onPressed: () => controller.jumpToPage(1),
          ),
          UchNamazPage(
            onPressed: () => controller.jumpToPage(0),
            onTap: () => controller.jumpToPage(2),
          ),
          BeshUbakNamazPage(
            onPressed: () => controller.jumpToPage(1),
             onTap: () => controller.jumpToPage(3),
          ),
          PageInfo(
             onPressed: () => controller.jumpToPage(1),
          ),

        ],
      ),
    );
  }
}
