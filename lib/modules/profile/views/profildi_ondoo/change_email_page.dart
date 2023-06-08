import 'package:bir_umma/constants/profile_constants/colors/profile_colors.dart';
import 'package:bir_umma/modules/profile/views/profile_view.dart';
import 'package:bir_umma/modules/profile/views/widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import '../../../../components/profile_component/email_password_field.dart';
import '../../../../components/profile_component/text_button_widget.dart';

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
            child: GestureDetector(
              onTap: () {
                ShowModalBottomSheet.modalBottomSheet(context);
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
                    left: 232,
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
