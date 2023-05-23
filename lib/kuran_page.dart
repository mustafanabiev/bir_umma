import 'package:flutter/material.dart';

class KuranPage extends StatefulWidget {
  const KuranPage({Key? key}) : super(key: key);

  @override
  KuranPageState createState() => KuranPageState();
}

class KuranPageState extends State<KuranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 107),
            child: Column(
              children: const [
                KuranCard(
                  title: 'Куран 0дөн',
                ),
                SizedBox(height: 20),
                KuranCard(
                  title: 'Суролор жана хадистер',
                ),
                SizedBox(height: 20),
                KuranCard(
                  title: 'Lorem Ipsum',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KuranCard extends StatelessWidget {
  const KuranCard({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Ink.image(
            width: 355,
            height: 160,
            image: const AssetImage('assets/images/kuran.png'),
            fit: BoxFit.cover,
           
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 111, right: 43, bottom: 23, left: 43),
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
