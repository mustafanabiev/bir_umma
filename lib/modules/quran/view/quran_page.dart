import 'package:flutter/material.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({Key? key}) : super(key: key);

  @override
  QuranPageState createState() => QuranPageState();
}

class QuranPageState extends State<QuranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            // snap: true,
            // floating: true,
            backgroundColor: Color.fromRGBO(3, 3, 107, 0.525),
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 24,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
            title: const Text(
              'Куран 0дөн',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                child: Image.asset(
                  'assets/images/kuran0don.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          size: 24,
                        ),
                      ),
                      const Text(
                        '210',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.65),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.visibility_outlined,
                          size: 24,
                        ),
                      ),
                      const Text(
                        '1123',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.65),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                          size: 24,
                        ),
                      ),
                      const Text(
                        '1644',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.65),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                // color: Color.fromRGBO(231, 241, 255, 0.4),
                color: Color(0xffE7F1FF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 29,
                      left: 18,
                      bottom: 15,
                    ),
                    child: Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18, right: 21, bottom: 20),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing \nand typesetting industry. Lorem Ipsum has been the \nindustry's standard dummy text ever since the 1500s,\nwhen an unknown printer took a galley of type and \nscrambled it to make a type specimen book \n\nIt has survived not only five centuries but also the \nleap into electronic typesetting, remaining essentially \nunchanged. It was popularised in the 1960s with the \nrelease of Letraset sheets containing Lorem Ipsum \npassages, and more recently with desktop publishing \nsoftware like Aldus PageMaker including versions of \nLorem Ipsum",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18, right: 21, bottom: 20),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing \nand typesetting industry. Lorem Ipsum has been the \nindustry's standard dummy text ever since the 1500s,\nwhen an unknown printer took a galley of type and \nscrambled it to make a type specimen book \n\nIt has survived not only five centuries but also the \nleap into electronic typesetting, remaining essentially \nunchanged. It was popularised in the 1960s with the \nrelease of Letraset sheets containing Lorem Ipsum \npassages, and more recently with desktop publishing \nsoftware like Aldus PageMaker including versions of \nLorem Ipsum",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
