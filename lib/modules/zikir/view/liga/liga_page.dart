import 'package:bir_umma/constants/profile_constants/colors/profile_colors.dart';
import 'package:bir_umma/constants/profile_constants/text_style/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'liga_widgets/users_card_widget.dart';

class LigaPage extends StatelessWidget {
  const LigaPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2.0,
        title: const Text('Жарыш'),
        actions: [
          SvgPicture.asset('assets/svg/gift.svg', height: 26),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset('assets/svg/calendar.svg', height: 49),
                SvgPicture.asset('assets/svg/profile.svg', height: 79),
                SvgPicture.asset('assets/svg/ligalar.svg', height: 49),
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Асан',
                style: AppTextStyle.f24w600,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppProfileColors.usersCardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '2-лига',
                            style: AppTextStyle.f20w500,
                          ),
                          Text(
                            '1-лигага отуу учун 1234 зикир калды',
                            style: AppTextStyle.f15w400,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Апталык',
                            style: AppTextStyle.f22w500,
                          ),
                          Text(
                            '3-кун',
                            style: TextStyle(
                              color: AppProfileColors.yellowColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppProfileColors.greenColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        '1234',
                        style: AppTextStyle.f24w500cWhite,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Text(
                  'Алдынкылар',
                  style: AppTextStyle.f25w400cGreen,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 230),
              child: Divider(
                thickness: 1,
              ),
            ),
            const SizedBox(height: 5),
            const UsersCardWidget(
              number: '1',
              league: '1-орун',
              image: 'men2',
              leagueColor: AppProfileColors.league1Color,
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '2',
              league: '2-орун',
              image: 'nonImage',
              leagueColor: AppProfileColors.league2Color,
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '3',
              league: '3-орун',
              image: 'nonImage',
              leagueColor: AppProfileColors.league3Color,
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Text(
                  'Лигада калуучулар',
                  style: AppTextStyle.f25w400cBlack,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 160),
              child: Divider(
                thickness: 1,
              ),
            ),
            const SizedBox(height: 5),
            const UsersCardWidget(
              number: '4',
              image: 'nonImage',
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '5',
              image: 'nonImage',
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '6',
              image: 'nonImage',
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '7',
              image: 'nonImage',
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '8',
              image: 'nonImage',
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '9',
              image: 'nonImage',
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '10',
              image: 'nonImage',
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Text(
                  'ЖАЛКООЛОР',
                  style: AppTextStyle.f25w400cRed,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 210),
              child: Divider(
                thickness: 1,
              ),
            ),
            const SizedBox(height: 5),
            const UsersCardWidget(
              number: '11',
              image: 'nonImage',
              idColor: AppProfileColors.redColor,
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '12',
              image: 'nonImage',
              idColor: AppProfileColors.redColor,
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '13',
              image: 'nonImage',
              idColor: AppProfileColors.redColor,
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '14',
              image: 'nonImage',
              idColor: AppProfileColors.redColor,
            ),
            const SizedBox(height: 10),
            const UsersCardWidget(
              number: '15',
              image: 'nonImage',
              idColor: AppProfileColors.redColor,
            ),
          ],
        ),
      ),
    );
  }
}
