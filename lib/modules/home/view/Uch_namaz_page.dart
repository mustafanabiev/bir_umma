import 'package:bir_umma/modules/home/view/namaz_page.dart';
import 'package:flutter/material.dart';

import '../../../components/card/carfNamaz.dart';
import '../../../constants/color.dart';
import '../../../gen/assets.gen.dart';

class UchNamazPage extends StatelessWidget {
  const UchNamazPage({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: onPressed,
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
          SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => BeshUbak()),
                    //   );
                    // },
                    child:
                        CardNamaz(fonCard: Image.asset(Assets.png.namaz.path))),
                InkWell(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => AitNamas()),
                    //   );
                    // },
                    child: CardNamaz(
                        fonCard: Image.asset(Assets.png.aitNamaz.path))),
                InkWell(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => NafilNamaz()),
                    //   );
                    // },
                    child: CardNamaz(
                        fonCard: Image.asset(Assets.png.nafilNamaz.path))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
