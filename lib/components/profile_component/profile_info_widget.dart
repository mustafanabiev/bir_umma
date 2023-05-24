import 'package:flutter/material.dart';
import '../../constants/profile_constants/text_style/app_text_style.dart';

class ProfilInfoWidget extends StatelessWidget {
  const ProfilInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/men1.png'),
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Text(
                'Аты Жону',
                style: AppTextStyle.f24w500,
              ),
              SizedBox(height: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('+996700123456'),
                  Text('example@gmail.com'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
