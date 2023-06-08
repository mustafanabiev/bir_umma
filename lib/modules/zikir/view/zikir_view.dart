import 'package:bir_umma/modules/zikir/view/liga/liga_page.dart';
import 'package:flutter/material.dart';

class ZikirView extends StatelessWidget {
  const ZikirView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZikirView'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LigaPage();
                },
              ),
            );
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}
