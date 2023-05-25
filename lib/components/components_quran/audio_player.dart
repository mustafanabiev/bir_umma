import 'package:flutter/material.dart';

class AudioPlayer extends StatelessWidget {
  const AudioPlayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
