import 'package:bir_umma/components/components.dart';
import 'package:bir_umma/modules/quran/quran.dart';
import 'package:flutter/material.dart';

class QuranView extends StatefulWidget {
  const QuranView({Key? key}) : super(key: key);

  @override
  QuranViewState createState() => QuranViewState();
}

class QuranViewState extends State<QuranView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 107),
            child: Column(
              children: [
                KuranCard(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuranPage(),
                      ),
                    );
                  },
                  title: 'Куран 0дөн',
                ),
                const SizedBox(height: 20),
                KuranCard(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KuranSurolor(),
                      ),
                    );
                  },
                  title: 'Суролор жана хадистер',
                ),
                const SizedBox(height: 20),
                KuranCard(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KuranSurolor(),
                      ),
                    );
                  },
                  title: 'Lorem Ipsum',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
