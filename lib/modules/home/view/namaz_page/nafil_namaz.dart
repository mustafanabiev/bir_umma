import 'package:bir_umma/modules/home/view/namaz_page/page_namaz.dart';
import 'package:flutter/material.dart';
import '../../../../constants/color.dart';

class NafilNamaz extends StatefulWidget {
  const NafilNamaz({Key? key}) : super(key: key);

  @override
  _NafilNamazState createState() => _NafilNamazState();
}

class _NafilNamazState extends State<NafilNamaz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageNamaz()),
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
        children: const [
          Text(
            'Нафил Намаз',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 10),
          Text(
              'Посланник Аллаха (да благословит его Аллах и приветствует) сказал: «Намаз-тасбих является величайшим подарком Аллаха, и наградой за этот намаз является прощение всех грехов, старых и новых, независимо от того, сделаны они тайно или явно, по незнанию или сознательно. Так что старайтесь выполнять намаз-тасбих ежедневно, а если не можете, то раз в неделю (предпочтительнее по пятницам) или раз в месяц. Если не можете и это, то раз в году, и, наконец, в самом крайнем случае хотя бы раз в жизни» (передали Абу Дауд, ибн Маджа и Байхаки). «Необходимо следовать особенно этой сунне людям, которые погрязли в грехах и не знают их количество, подобно нам» (имам Шарани).Абдуллах сын Мубарака сказал: «Желательно привыкнуть к совершению молитвы тасбих в любое время и не забывать про неё».Намаз до послеобеденной молитвыКоличество ракаатов: от 2 до 4 по желанию.'),
        ],
      ),
    );
  }
}
