import 'package:flutter/material.dart';
import '../../components/auth_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 140,
            ),
            child: Image.asset('assets/images/logo.png'),
          ),
          const SizedBox(
            height: 30,
          ),
          const AuthTextField(
            labelText: 'Email же тел.номер',
            icons: Icon(Icons.mail),
            obscureText: false,
          ),
          const SizedBox(
            height: 15,
          ),
          const AuthTextField(
            labelText: 'Аты-жөнү',
            icons: Icon(Icons.person),
            obscureText: false,
          ),
          const SizedBox(
            height: 15,
          ),
          const AuthTextField(
              labelText: 'Сыр сөз',
              icons: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off),
              
              obscureText: true),
          const SizedBox(
            height: 15,
          ),
          const AuthTextField(
              labelText: 'Сыр сөзду кайталап жазыңыз',
              icons: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off),
              obscureText: true),
          const SizedBox(
            height: 220,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: const Color(0xFF3473E6),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Катталуу',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
