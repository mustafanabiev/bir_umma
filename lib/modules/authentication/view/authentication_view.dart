// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bir_umma/components/auth_textfild_login.dart';
import 'package:flutter/material.dart';

import 'package:bir_umma/components/my_button.dart';
import 'package:bir_umma/components/squareTile.dart';

class AuthenticationView extends StatelessWidget {
  AuthenticationView({Key? key}) : super(key: key);
  final safecontroller = TextEditingController();
  final usernameController = TextEditingController();
  final passwordcontroller = TextEditingController();
  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'assets/images/LOGO.png',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                MyTextFilds(
                  usernameController: usernameController,
                  hintext: 'Аты жөнү',
                  icons: const Icon(Icons.person),
                ),
                const SizedBox(
                  height: 15,
                ),
                MyTextFilds(
                  usernameController: usernameController,
                  hintext: 'Сыр сөз',
                  icons: const Icon(Icons.lock),
                  icon: const Icon(Icons.visibility_off),
                ),
                const SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        color: Colors.grey[700],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Эстеп калуу',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                // sign in
                MyButton(
                  onTap: signUserIn,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text('Сыр сөздү унуттуңузбу?'),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'КАТТАЛУУ',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 18,
                ),
                // or
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          endIndent: 16,
                          thickness: 0.5,
                          color: Colors.blue,
                        ),
                      ),
                      Text('же', style: TextStyle(color: Colors.black)),
                      Expanded(
                        child: Divider(
                          indent: 16,
                          thickness: 0.5,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //google and apple button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 70,
                    ),
                    // google button
                    SquareTile(imagePath: 'assets/images/google.png'),
                    SizedBox(
                      width: 55,
                    ),
                    SquareTile(imagePath: 'assets/images/apple.png'),
                    SizedBox(
                      width: 50,
                    ),
                    SquareTile(imagePath: 'assets/images/FB.png'),
                    SizedBox(
                      width: 50,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                const Padding(
                  padding: EdgeInsets.only(
                    left: 250,
                  ),
                  child: Text(
                    'Пропустить',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
