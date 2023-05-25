import 'package:bir_umma/components/components.dart';
import 'package:bir_umma/components/components.dart';
import 'package:bir_umma/modules/quran/quran.dart';
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
        title: const Text(
          'Куран',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color.fromRGBO(0, 0, 0, 0.5),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 24,
              color: Colors.black,
            ),
            onPressed: () {},
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
                  Tab(text: 'Сүрөлөр'),
                  Tab(text: 'Хадистер'),
                  Tab(text: 'Сакталган'),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const KuranFatiha(),
                            ),
                          );
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.hexagon,
                            color: Color.fromRGBO(52, 115, 230, 1),
                            size: 36,
                          ),
                          title: Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    }),
                ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const KuranHadister(),
                            ),
                          );
                        },
                        child: const ListTile(
                          // onTap: onTap,
                          leading: Icon(
                            Icons.hexagon,
                            color: Color.fromRGBO(52, 115, 230, 1),
                            size: 36,
                          ),
                          title: Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    }),
                ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        // onTap: onTap,
                        leading: Icon(
                          Icons.hexagon,
                          color: Color.fromRGBO(52, 115, 230, 1),
                          size: 36,
                        ),
                        title: Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        trailing: Icon(
                          Icons.bookmark_border,
                          color: Color.fromRGBO(0, 0, 0, 0.8),
                          size: 36,
                        ),
                      );
                    }),
              ],
            ),
          ),
          const AudioPlayer(),
        ],
      ),
    );
  }
}
