import 'package:bir_umma/constants/profile_constants/colors/profile_colors.dart';
import 'package:flutter/material.dart';

import '../../../components/profile_component/profile_info_widget.dart';
import '../../../constants/profile_constants/text_style/app_text_style.dart';
import 'change_email_page.dart';
import 'change_password_page.dart';

class ProfildiOndoo extends StatelessWidget {
  const ProfildiOndoo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Профилди ондоо',
          style: TextStyle(
            color: AppProfileColors.appBarColor,
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ProfilInfoWidget(),
          ),
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ChangeEmailPage();
                    },
                  ),
                );
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Профиль',
                        style: AppTextStyle.f24w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Divider(thickness: 2),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ChangePasswordPage();
                    },
                  ),
                );
              },
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Коопсуздук',
                        style: AppTextStyle.f24w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Divider(thickness: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
