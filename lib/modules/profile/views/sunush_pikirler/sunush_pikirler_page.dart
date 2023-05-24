import 'package:bir_umma/constants/profile_constants/colors/profile_colors.dart';
import 'package:bir_umma/modules/profile/profile.dart';
import 'package:flutter/material.dart';
import '../../../../components/profile_component/text_button_widget.dart';
import '../../../../constants/profile_constants/text_style/app_text_style.dart';

class SunushPikirlerPage extends StatelessWidget {
  const SunushPikirlerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 20,
          height: 450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppProfileColors.containerBackground,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    fillColor: AppProfileColors.textFieldBackground,
                    filled: true,
                    hintText: 'Сунуш-пикирлер',
                    hintStyle: const TextStyle(fontSize: 22),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  minLines: 13,
                  maxLines: 100,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButtonWidget(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    text: 'Артка',
                    color: AppProfileColors.textButtonGrey,
                  ),
                  TextButtonWidget(
                    onPressed: () {
                      showDialog(
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
                                      builder: (BuildContext context) =>
                                          const ProfileView(),
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
                    },
                    text: 'Жонотуу',
                    color: AppProfileColors.textButtonBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
