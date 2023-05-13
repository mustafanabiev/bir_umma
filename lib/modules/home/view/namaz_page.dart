import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../../../gen/assets.gen.dart';

// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class NamazPage extends StatelessWidget {
  NamazPage({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  bool isChecked = false;
  void Function()? onPressed;
  bool valor = true;

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
            color: const Color(0xffE7F1FF),
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
              // SelectGenderWidget(),
              ChangeNotifierProvider(
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
              ),
              Row(
                children: [
                  ChangeNotifierProvider(
                    create: (_) => CheckboxProvider(),
                    child: Consumer<CheckboxProvider>(
                      builder: (context, checkboxProvider, _) =>
                          Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          shape: const CircleBorder(),
                          value: checkboxProvider.isChecked,
                          onChanged: (value) {
                            checkboxProvider.isChecked = value ?? true;
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Эстеп калуу",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff3473E6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0, vertical: 12.0),
                ),
                child: const Text(
                  'Баштоо',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxProvider with ChangeNotifier {
  bool _isChecked = true;

  bool get isChecked => _isChecked;

  set isChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }
}

class GenderProvider with ChangeNotifier {
  bool _gender = true;

  bool get getGender => _gender;

  set setGender(bool value) {
    _gender = value;
    notifyListeners();
  }
}
