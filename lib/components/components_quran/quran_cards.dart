import 'package:bir_umma/modules/quran/quran.dart';
import 'package:bir_umma/modules/quran/view/quran_surolor.dart';
import 'package:flutter/material.dart';

class KuranCard extends StatelessWidget {
  const KuranCard({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const QuranPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 101,
          right: 20,
          bottom: 31,
          left: 31,
        ),
        width: 355,
        height: 160,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/kuran.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(
            left: 12,
          ),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(width: 1.5, color: Colors.white),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
