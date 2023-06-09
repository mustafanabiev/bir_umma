import 'package:bir_umma/components/card/cardRating.dart';
import 'package:flutter/material.dart';
import 'package:toggle_bar/toggle_bar.dart';

import '../../../components/card/cartTht.dart';
import '../../../constants/color.dart';

// ignore: must_be_immutable
class ZikirStaticPage extends StatefulWidget {
  const ZikirStaticPage({
    Key? key,
    required this.onPressed,
    required this.onTap,
  }) : super(key: key);
  final void Function()? onPressed;
  final void Function()? onTap;

  @override
  State<ZikirStaticPage> createState() => _ZikirStaticPageState();
}

class _ZikirStaticPageState extends State<ZikirStaticPage> {
  List<String> labels = ['Апталык', 'Айлык', 'Жылдык'];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: widget.onPressed,
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 45,
          ),
        ),
        backgroundColor: Appcolors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ToggleBar(
                backgroundColor: Appcolors.blueTabbar,
                labels: labels,
                textColor: Colors.white,
                selectedTextColor: Colors.white,
                selectedTabColor: Appcolors.yellow,
                labelTextStyle: const TextStyle(fontWeight: FontWeight.bold),
                onSelectionUpdated: (index) {
                  setState(() {
                    counter = index;
                  });
                }),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 230, 0),
              child: Column(
                children: [
                  InkWell(
                    onTap: widget.onTap,
                    child: const Text(
                      'Алдыңкылар',
                      style: TextStyle(
                        color: Appcolors.green,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(17, 0, 20, 0),
                    child: Divider(
                      color: Appcolors.dividerCr,
                      thickness: 1.5,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CardRating(
              data1: '1',
              width: 95,
              color: Colors.black,
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
              data1: '1',
              width: 95,
              color: Colors.black,
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
              data1: '3',
              width: 95,
              color: Colors.black,
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
