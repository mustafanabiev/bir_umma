import 'package:flutter/material.dart';
import '../../../../components/profile_component/text_button_widget.dart';
import '../../../../constants/profile_constants/colors/profile_colors.dart';
import '../../../../constants/profile_constants/text_style/app_text_style.dart';
import '../profile_view.dart';

class ShowDialogSunushPikir {
  static Future<dynamic> showDialogSunushPikir(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(5, 5),
                    blurRadius: 30,
                    spreadRadius: 15,
                    color: Colors.blue.withOpacity(0.2),
                  ),
                ],
              ),
              child: const Image(
                image: AssetImage(
                  'assets/images/check_circle.png',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ыраазычылык билдиребиз',
              textAlign: TextAlign.center,
              style: AppTextStyle.f24w500,
            ),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                'Сиздин ойунуз биз учун маанилуу',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppProfileColors.grey1Color,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButtonWidget(
              onPressed: () {
                Navigator.pushAndRemoveUntil<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ProfileView(),
                  ),
                  (route) => false,
                );
                // context.read<MainCubit>().change(4);
              },
              text: 'OK',
              color: AppProfileColors.textButtonBlue,
            ),
          ],
        ),
      ),
    );
  }
}
