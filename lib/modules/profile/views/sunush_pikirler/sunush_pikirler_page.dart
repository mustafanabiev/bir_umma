import 'package:bir_umma/constants/profile_constants/colors/profile_colors.dart';
import 'package:bir_umma/modules/profile/views/widgets/show_dialog_sunush_pikir.dart';
import 'package:flutter/material.dart';
import '../../../../components/profile_component/text_button_widget.dart';

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
                      ShowDialogSunushPikir.showDialogSunushPikir(context);
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
