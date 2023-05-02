import 'package:bir_umma/modules/home/view/namaz_page/page_namaz.dart';
import 'package:flutter/material.dart';

import '../../../../constants/color.dart';
import '../../../../gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCheckedRememberMe = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 45,
          ),
        ),
        backgroundColor: Appcolors.appBar,
        title: const Text(
          "Намаз",
          style: TextStyle(color: Appcolors.textNz, fontSize: 27),
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: Appcolors.lineappr,
              height: 1.7,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 100, 50, 100),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xffE7F1FF),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Сиз?',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 34),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.png.erkek1.image(),
                  SizedBox(width: 10),
                  Assets.png.ayal1.image(),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    shape: const CircleBorder(),
                    value: isChecked,
                    onChanged: (value) {
                      isChecked = !isChecked;
                      setState(() {});
                    },
                  ),
                  const Text(
                    "Эстеп калуу",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageNamaz()),
                  );
                },
                child: Text(
                  'Баштоо',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff3473E6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80.0, vertical: 12.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
