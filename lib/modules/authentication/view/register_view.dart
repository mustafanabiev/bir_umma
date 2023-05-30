import 'package:bir_umma/components/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(
                height: 25,
              ),
              AuthTextField(
                labelText: 'Email же тел.номер',
                obscureText: false,
                prefixIcon: SvgPicture.asset('assets/icons/mail.svg',
                    fit: BoxFit.scaleDown),
                suffixIcon: null,
              ),
              const SizedBox(
                height: 10,
              ),
              AuthTextField(
                labelText: 'Аты-жөнү',
                obscureText: false,
                prefixIcon: SvgPicture.asset('assets/icons/user.svg',
                    fit: BoxFit.scaleDown),
                suffixIcon: null,
              ),
              const SizedBox(
                height: 10,
              ),
              AuthTextField(
                  labelText: 'Сыр сөз',
                  prefixIcon: SvgPicture.asset('assets/icons/lock_icon.svg',
                      fit: BoxFit.scaleDown),
                  suffixIcon: SvgPicture.asset('assets/icons/eye-off_icon.svg',
                      fit: BoxFit.scaleDown),
                  obscureText: true),
              const SizedBox(
                height: 10,
              ),
              AuthTextField(
                  labelText: 'Сыр сөзду кайталап жазыңыз',
                  prefixIcon: SvgPicture.asset('assets/icons/lock_icon.svg',
                      fit: BoxFit.scaleDown),
                  suffixIcon: SvgPicture.asset('assets/icons/eye-off_icon.svg',
                      fit: BoxFit.scaleDown),
                  obscureText: true),
              const SizedBox(
                height: 210,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color(0xFF3473E6),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: const Center(
                  child: Text(
                    'Катталуу',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
