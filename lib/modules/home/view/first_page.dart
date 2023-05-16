// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bir_umma/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:bir_umma/components/components.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
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
              itemCount: 12,
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
                    onTap: onTap,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/${categories[index].image}.png',
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        Image.asset(
                          'assets/images/fon.png',
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        Positioned(
                          right: 10,
                          left: 10,
                          bottom: 7,
                          child: Text(
                            categories[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
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
