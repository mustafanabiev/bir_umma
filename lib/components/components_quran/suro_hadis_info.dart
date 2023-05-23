import 'package:flutter/material.dart';

class suroHadisInfo extends StatelessWidget {
  const suroHadisInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
            // trailing: Icon(
            //   Icons.bookmark_add_outlined,
            //   color: Color.fromRGBO(52, 115, 230, 1),
            //   size: 36,
            // ),
          );
        });
  }
}
