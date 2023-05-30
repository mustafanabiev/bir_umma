import 'package:bir_umma/modules/authentication/view/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/auth_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                height: 20,
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 39, vertical: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.circle_outlined,
                      size: 28,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Эстеп калуу',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color(0xFF3473E6),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: const Center(
                  child: Text(
                    'Кирүү',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Text(
                'Сыр сөздү унутутуңузбу?',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 160,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterView(),
                    ),
                  );
                },
                child: Text(
                  'КАТТАЛУУ',
                  style: TextStyle(
                      color: Colors.blue[500],
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        endIndent: 14,
                        thickness: 0.7,
                        color: Colors.blue,
                      ),
                    ),
                    Text('же',
                        style: TextStyle(color: Colors.black, fontSize: 17)),
                    Expanded(
                      child: Divider(
                        indent: 14,
                        thickness: 0.7,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logos_google.png'),
                  const SizedBox(
                    width: 68,
                  ),
                  Image.asset('assets/images/logos_apple.png'),
                  const SizedBox(
                    width: 68,
                  ),
                  Image.asset('assets/images/logos_facebook.png')
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Text(
                  'Пропустить',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
