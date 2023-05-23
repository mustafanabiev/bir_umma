import 'package:bir_umma/components/components.dart';
import 'package:flutter/material.dart';

class KuranSurolor extends StatefulWidget {
  const KuranSurolor({Key? key}) : super(key: key);

  @override
  KuranSurolorState createState() => KuranSurolorState();
}

class KuranSurolorState extends State<KuranSurolor>
    with TickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 3,
    vsync: this,
  );

  Icon actionIcon = const Icon(
    Icons.search,
    size: 24,
    color: Colors.black,
  );
  Widget actionSearchBar = const Text(
    'Куран',
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
            onPressed: iconSearch,
          ),
        ],
      ),
      body: Column(
        children: [
          Card(
            margin:
                const EdgeInsets.only(top: 32, bottom: 32, left: 20, right: 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(52, 115, 230, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TabBar(
                labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                controller: tabController,
                isScrollable: true,
                labelColor: Colors.black,
                labelStyle: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                unselectedLabelColor: const Color.fromRGBO(0, 0, 0, 1),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(255, 185, 0, 1),
                ),
                tabs: const [
                  Tab(
                    text: 'Сүрөлөр',
                  ),
                  Tab(text: 'Хадистер'),
                  Tab(text: 'Сакталган'),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                suroHadisInfo(),
                suroHadisInfo(),
                suroHadisInfo(),
              ],
            ),
          ),
          Container(
            height: 98,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color.fromRGBO(217, 217, 217, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      (Icons.skip_previous_outlined),
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 23),
                    Icon(
                      (Icons.pause_circle_outlined),
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 23),
                    Icon(
                      (Icons.skip_next_outlined),
                      color: Colors.black,
                      size: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void iconSearch() {
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
  }
}
