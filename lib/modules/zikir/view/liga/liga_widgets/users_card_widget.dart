import 'package:bir_umma/constants/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/profile_constants/colors/profile_colors.dart';

class UsersCardWidget extends StatelessWidget {
  const UsersCardWidget({
    super.key,
    required this.number,
    this.league,
    this.image,
    this.leagueColor,
    this.idColor,
  });

  final String number;
  final String? league;
  final String? image;
  final Color? leagueColor;
  final Color? idColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppProfileColors.userCardBorderColor,
        ),
        color: AppProfileColors.usersCardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Text(
                      number,
                      style: TextStyle(
                        color: idColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Аты-жону',
                      style: AppTextStyle.f24w500,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Divider(thickness: 1),
                ),
                const Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      '123456',
                      style: AppTextStyle.f22w500cBlack,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 80,
                      height: 25,
                      decoration: BoxDecoration(
                        color: leagueColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          league != null ? '$league' : '',
                          style: const TextStyle(
                            color: AppProfileColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/images/$image.png',
              fit: BoxFit.cover,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
