import 'package:bir_umma/modules/home/view/namaz_page/page_namaz.dart';
import 'package:flutter/material.dart';

import '../../../../constants/color.dart';

class AitNamas extends StatefulWidget {
  const AitNamas({Key? key}) : super(key: key);

  @override
  _AitNamasState createState() => _AitNamasState();
}

class _AitNamasState extends State<AitNamas> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Айт Намаз',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 10),
          Text(
              'Совершать утреннюю молитву предписано в религиозных заведениях или в других местах вместе с общиной. Поэтому дома айт-намаз не читают. Праздничная молитва начинается примерно через полчаса после восхода солнца. Верующие встают в этот день пораньше, совершают полное омовение, надевают свою лучшую одежду и идут в мечети.')
        ],
      ),
    );
  }
}
