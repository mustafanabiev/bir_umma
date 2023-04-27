import 'package:bir_umma/modules/home/view/namaz_page/page_namaz.dart';
import 'package:flutter/material.dart';

import '../../../../components/card/carfNamaz.dart';
import '../../../../constants/color.dart';
import '../../../../gen/assets.gen.dart';

class BeshUbak extends StatefulWidget {
  const BeshUbak({Key? key}) : super(key: key);

  @override
  _BeshUbakState createState() => _BeshUbakState();
}

class _BeshUbakState extends State<BeshUbak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageNamaz()),
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
      body: SingleChildScrollView(
        child: Row(
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
                    child: CardNamaz(
                        fonCard: Image.asset(Assets.png.bagimdat.path))),
                CardNamaz(fonCard: Image.asset(Assets.png.beshim.path)),
                CardNamaz(fonCard: Image.asset(Assets.png.asr.path)),
                CardNamaz(fonCard: Image.asset(Assets.png.sham.path)),
                CardNamaz(fonCard: Image.asset(Assets.png.kuptan.path)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
