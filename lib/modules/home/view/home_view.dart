import 'package:bir_umma/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        foregroundColor: Colors.black,
        backgroundColor: AppColors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'B i r  U m m a',
          style: TextStyle(
            fontFamily: 'Allura-Regular',
            fontSize: 32,
            color: AppColors.blue,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: 13,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 48,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/kepin.png',
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        const Positioned(
                          right: 10,
                          left: 10,
                          // top: 60,
                          bottom: 7,
                          child: Text(
                            'Кабыр казуу',
                            textAlign: TextAlign.center,
                            // 'Кепин ороо',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: AppColors.yellow,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
