import 'package:flutter/material.dart';

class KuranHadister extends StatefulWidget {
  const KuranHadister({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _KuranHadisterState createState() => _KuranHadisterState();
}

class _KuranHadisterState extends State<KuranHadister> {
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
          '1-хадис',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color.fromRGBO(0, 0, 0, 0.5),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 32, left: 20, right: 20, bottom: 32),
        padding: const EdgeInsets.only(
          top: 49,
          left: 22,
          right: 22,
          bottom: 49,
        ),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(231, 241, 255, 0.4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,
                wordSpacing: 0.5,
              ),
            ),
            Divider(
              height: 35,
              color: Color.fromRGBO(0, 0, 0, 0.3),
              indent: 25,
              endIndent: 25,
            ),
            Text(
              'Мааниси:',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 21),
            Text(
              'Lorem Ipsum is simply dummy text of the \n printing and typesetting industry. \n Lorem Ipsum has been the industrys standard \n  text ever since the 1500s, when an \n unknown printer took a galley of type and \n scrambled it to make a type specimen book',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromRGBO(0, 0, 0, 0.8),
                wordSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
