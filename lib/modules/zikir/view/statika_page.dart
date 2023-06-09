// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/card/cardRating.dart';
import '../../../components/card/cartTht.dart';
import '../../../constants/color.dart';

class StatikaPage extends StatelessWidget {
  const StatikaPage({
    Key? key,
    this.onPressed,
    this.onTap,
  }) : super(key: key);
  final void Function()? onPressed;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Жарыш',
          style: TextStyle(color: Appcolors.grey),
        ),
        leading: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/gift.svg'),
            iconSize: 45,
          ),
        ],
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 28, 15, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Appcolors.yellow,
                    child: IconButton(
                      icon: SvgPicture.asset('assets/icons/calendar.svg',
                          height: 90, width: 90),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  CircleAvatar(
                      radius: 50,
                      backgroundColor: Appcolors.white,
                      child: SvgPicture.asset(
                        'assets/icons/profile.svg',
                        width: 120,
                        height: 120,
                      )),
                  const SizedBox(
                    width: 45,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Appcolors.yellow,
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/vector.svg',
                        height: 90,
                        width: 90,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const Text('User',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 220,
                  height: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Appcolors.zrcard,
                    child: Column(
                      children: const [
                        Text(
                          '2-лига',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text('1-лигага өтүү үчүн \n1234 зикир калды'),
                        Text(
                          'Апталык',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '3-кун',
                          style: TextStyle(color: Appcolors.yellow),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 150,
                  height: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Appcolors.zrcard,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '1234',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: onTap,
              child: const CardThne(
                thne: 'Алдыңкылар',
                padding: EdgeInsets.fromLTRB(1, 0, 240, 0),
                color: Appcolors.green,
              ),
            ),
            const CardRating(
              color: Colors.black,
              width: 95,
              data1: '1',
              child: Card(
                color: Appcolors.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    '1-орун',
                    style: TextStyle(color: Appcolors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const CardRating(
              color: Colors.black,
              width: 95,
              data1: '2',
              child: Card(
                color: Appcolors.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    '2-орун',
                    style: TextStyle(color: Appcolors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const CardRating(
              color: Colors.black,
              width: 95,
              data1: '3',
              child: Card(
                color: Appcolors.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    '3-орун',
                    style: TextStyle(color: Appcolors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const CardThne(
              thne: 'Лигада калуучулар',
              padding: EdgeInsets.fromLTRB(1, 0, 160, 0),
              color: Appcolors.green,
            ),
            const CardRating(
              color: Colors.black,
              width: 95,
              data1: '4',
            ),
            const CardRating(
              color: Colors.black,
              data1: '5',
              width: 95,
            ),
            const CardRating(
              color: Colors.black,
              data1: '6',
              width: 95,
            ),
            const CardRating(
              color: Colors.black,
              width: 95,
              data1: '7',
            ),
            const CardRating(
              color: Colors.black,
              data1: '8',
              width: 95,
            ),
            const CardRating(
              color: Colors.black,
              width: 95,
              data1: '9',
            ),
            const CardRating(
              color: Colors.black,
              width: 82,
              data1: '10',
            ),
            const CardThne(
              thne: 'ЖАЛКООЛОР',
              color: Appcolors.red,
              padding: EdgeInsets.fromLTRB(1, 0, 240, 0),
            ),
            const CardRating(
              color: Appcolors.red,
              data1: '11',
              width: 79,
            ),
            const CardRating(
              color: Appcolors.red,
              data1: '12',
              width: 82,
            ),
            const CardRating(
              color: Appcolors.red,
              data1: '13',
              width: 79,
            ),
            const CardRating(
              color: Appcolors.red,
              data1: '14',
              width: 82,
            ),
            const CardRating(
              color: Appcolors.red,
              data1: '15',
              width: 82,
            ),
          ],
        ),
      ),
    );
  }
}
