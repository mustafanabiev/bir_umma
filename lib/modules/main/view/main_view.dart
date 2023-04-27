import 'package:bir_umma/modules/home/view/namaz_page/ait_namaz.dart';
import 'package:bir_umma/modules/home/view/namaz_page/namaz_page.dart';
import 'package:bir_umma/modules/modules.dart';
import 'package:bir_umma/modules/profile/view/profile_view.dart';
import 'package:bir_umma/modules/question_answer/question_answer.dart';
import 'package:bir_umma/modules/quran/quran.dart';
import 'package:bir_umma/modules/zikir/view/zikir_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen([
      HomeView(),
      QuestionAnswerView(),
      QuranView(),
      ZikirView(),
      ProfileView(),
    ]);
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen(this.items, {super.key});

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[context.watch<MainCubit>().state],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: context.watch<MainCubit>().state,
        onTap: context.read<MainCubit>().change,
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/home_icon.svg',
              color: Colors.blue,
            ),
            icon: SvgPicture.asset('assets/icons/home_icon.svg'),
            label: 'Башкы бет',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/message_icon.svg',
              color: Colors.blue,
            ),
            icon: SvgPicture.asset('assets/icons/message_icon.svg'),
            label: 'Суроо-жооп',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/quran_icon.svg',
              color: Colors.blue,
            ),
            icon: SvgPicture.asset('assets/icons/quran_icon.svg'),
            label: 'Куран',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/zikir_icon.svg',
              color: Colors.blue,
            ),
            icon: SvgPicture.asset('assets/icons/zikir_icon.svg'),
            label: 'Зикир',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/profile_icon.svg',
              color: Colors.blue,
            ),
            icon: SvgPicture.asset('assets/icons/profile_icon.svg'),
            label: 'Жеке кабинет',
          ),
        ],
      ),
    );
  }
}
