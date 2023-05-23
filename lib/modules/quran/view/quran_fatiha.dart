import 'package:flutter/material.dart';

class KuranFatiha extends StatefulWidget {
  const KuranFatiha({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _KuranFatihaState createState() => _KuranFatihaState();
}

class _KuranFatihaState extends State<KuranFatiha> {
  Icon actionIcon = const Icon(
    Icons.search,
    size: 24,
    color: Colors.black,
  );
  Widget actionSearchBar = const Text(
    'Фатиха',
    style: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: Color.fromRGBO(0, 0, 0, 0.5),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // search Icon ду компонентке кочургонду сураш керек
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 24,
            color: Colors.black,
          ),
        ),
        title: actionSearchBar,
        actions: [
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (actionIcon.icon == Icons.search) {
                  actionIcon == const Icon(Icons.cancel);
                  actionSearchBar ==
                      const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                      );
                } else {
                  actionIcon = const Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.black,
                  );
                  actionSearchBar = const Text(
                    'Куран',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  );
                }
              });
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 32, left: 20, right: 20, bottom: 32),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(231, 241, 255, 0.4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 73, left: 30, right: 30),
              child: Text(
                'بِسْمِ اللّهِ الرَّحْمَنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمنِ الرَّحِيمِ ﴿٣﴾ مَلِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهدِنَا الصِّرَاطَ المُستَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنعَمتَ عَلَيهِمْ غَيرِ المَغضُوبِ عَلَيهِمْ وَلاَ الضَّالِّينَ﴿٧﴾',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
            Column(
              children: [
                Slider(
                  min: 0,
                  max: 100,
                  value: 40,
                  onChanged: (value) {},
                  inactiveColor: const Color.fromRGBO(60, 60, 67, 0.18),
                  activeColor: const Color.fromRGBO(60, 60, 67, 0.18),
                  thumbColor: const Color.fromRGBO(52, 115, 230, 1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      (Icons.list),
                      color: Colors.black,
                      size: 30,
                    ),
                    const Icon(
                      (Icons.skip_previous_outlined),
                      color: Colors.black,
                      size: 35,
                    ),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromRGBO(52, 115, 230, 1),
                      ),
                      child: const Icon(
                        Icons.play_arrow_outlined,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                        size: 30,
                      ),
                    ),
                    const Icon(
                      (Icons.skip_next_outlined),
                      color: Colors.black,
                      size: 35,
                    ),
                    const Icon(
                      (Icons.bookmark_border_outlined),
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
