import 'package:flutter/material.dart';

import '../../../../components/card/carfNamaz.dart';
import '../../../../constants/color.dart';
import '../../../../gen/assets.gen.dart';
import 'ait_namaz.dart';
import 'besh_ubak.dart';
import 'nafil_namaz.dart';
import 'namaz_page.dart';

class PageNamaz extends StatefulWidget {
  const PageNamaz({Key? key}) : super(key: key);

  @override
  _PageNamazState createState() => _PageNamazState();
}

class _PageNamazState extends State<PageNamaz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BeshUbak()),
                    );
                  },
                  child:
                      CardNamaz(fonCard: Image.asset(Assets.png.namaz.path))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AitNamas()),
                    );
                  },
                  child: CardNamaz(
                      fonCard: Image.asset(Assets.png.aitNamaz.path))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NafilNamaz()),
                    );
                  },
                  child: CardNamaz(
                      fonCard: Image.asset(Assets.png.nafilNamaz.path))),
            ],
          ),
        ],
      ),
    );
  }
}
