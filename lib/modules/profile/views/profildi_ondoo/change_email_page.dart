import 'package:bir_umma/constants/profile_constants/colors/profile_colors.dart';
import 'package:bir_umma/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../components/profile_component/email_password_field.dart';
import '../../../../components/profile_component/text_button_widget.dart';
import '../../../../constants/profile_constants/text_style/app_text_style.dart';

class ChangeEmailPage extends StatelessWidget {
  const ChangeEmailPage({Key? key}) : super(key: key);
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 25, left: 25),
                            child: Row(
                              children: [
                                Text(
                                  'Аватарды озгортуу',
                                  style: AppTextStyle.f22w500,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 25),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/svg/camera.svg'),
                                const SizedBox(width: 20),
                                SvgPicture.asset('assets/svg/galery.svg'),
                                const SizedBox(width: 20),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child:
                                      SvgPicture.asset('assets/svg/delete.svg'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/images/men1.png',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 230,
                    top: 70,
                    child: Icon(
                      Icons.camera_alt,
                      color: AppProfileColors.cameraIconColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 60),
          const EmailPasswordFieldWidget(text: 'Ысым'),
          const SizedBox(height: 20),
          const EmailPasswordFieldWidget(text: 'Email'),
          const SizedBox(height: 20),
          const EmailPasswordFieldWidget(text: 'Тел.номер'),
          const SizedBox(height: 270),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButtonWidget(
                onPressed: () {},
                text: 'Сактоо',
                color: AppProfileColors.textButtonBlue,
              ),
              TextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ProfileView();
                      },
                    ),
                  );
                },
                text: 'Артка',
                color: AppProfileColors.textButtonGrey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
