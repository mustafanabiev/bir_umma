import 'package:flutter/material.dart';

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  bool isHiddenPassword = true;

  final userController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isComplated = false;
  void signUserIn() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Логотип
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 140,
                ),
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 30,
              ),

              // Аты жону, сыр соз.
              AuthTextField(
                controller: userController,
                hinText: 'Аты жөну',
                icons: const Icon(Icons.person),
                obscureText: isHiddenPassword,
              ),

              const SizedBox(
                height: 15,
              ),
              AuthTextField(
                  controller: passwordController,
                  hinText: 'Сыр сөз',
                  icons: const Icon(Icons.lock),
                  obscureText: isHiddenPassword),

              // эстеп калуу
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                child: CheckboxMenuButton(
                  value: _isComplated,
                  onChanged: (v) {
                    setState(() {
                      _isComplated = v ?? false;
                    }
                    );
                  },
                  child: Text(
                    'Эстеп калуу',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),

              // кируу
              MyButton(
                onTap: signUserIn,
                text: 'Кируу',
              ),

              // syr soz unuttunuzbu
              const SizedBox(
                height: 17,
              ),
              Center(
                child: Text(
                  'Сыр сөзду унуттунузбу?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(
                height: 140,
              ),

              // kattaluu
              Center(
                child: GestureDetector(
                  onTap: () {
                    signUserIn();
                  },
                  child: Text(
                    'КАТТАЛУУ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
              ),

              // divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                      width: 15,
                    ),
                    Text(
                      'же',
                      style: TextStyle(
                          color: Colors.grey[900], fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Logos.png'),
                ],
              ),

              // propystit
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 230),
                child: Text(
                  'Пропустить',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Kiruu baskychy
class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.onTap,
    required this.text,
  }) : super(key: key);
  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color(0xFF3473E6),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

// Aty-jony, syr soz
class AuthTextField extends StatelessWidget {
  final controller;
  final String hinText;
  final bool obscureText;
  final Icon icons;
  const AuthTextField({
    Key? key,
    required this.hinText,
    required this.obscureText,
    required this.icons,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hinText,
          hintStyle:
              TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500),
          icon: icons,
          iconColor: Colors.grey[800],
        ),
      ),
    );
  }
}
