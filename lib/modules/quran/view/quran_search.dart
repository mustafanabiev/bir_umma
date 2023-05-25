import 'package:flutter/material.dart';

class KuranSearchPage extends StatefulWidget {
  const KuranSearchPage({Key? key}) : super(key: key);

  @override
  KuranSearchPageState createState() => KuranSearchPageState();
}

class KuranSearchPageState extends State<KuranSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, right: 20, bottom: 30, left: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  size: 26,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 35),
            const TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(0, 0, 0, 0.5), width: 1.0),
                ),
                suffixIcon: Icon(
                  Icons.search,
                  size: 26,
                  color: Colors.black,
                ),
                hintText: 'Lorem Ipsum',
                hintStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                ),
              ),
            ),
            const SizedBox(height: 35),
            const TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(0, 0, 0, 0.5), width: 1.0),
                ),
                suffixIcon: Icon(
                  Icons.search,
                  size: 26,
                  color: Colors.black,
                ),
                hintText: 'Lorem Ipsum',
                hintStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
