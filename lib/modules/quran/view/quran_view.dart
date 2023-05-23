import 'package:bir_umma/components/components.dart';
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
              children: const [
                KuranCard(
                  title: 'Куран 0дөн',
                ),
                SizedBox(height: 20),
                KuranCard(
                  title: 'Суролор жана хадистер',
                ),
                SizedBox(height: 20),
                KuranCard(
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
