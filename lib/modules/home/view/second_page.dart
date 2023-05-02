// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bir_umma/components/models/home_page/articles_model.dart';
import 'package:bir_umma/constants/colors/app_colors.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    this.onPressed,
    this.onTap,
  }) : super(key: key);

  final void Function()? onPressed;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Даарат',
          style: TextStyle(color: AppColors.grey),
        ),
        leading: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        elevation: 1.7,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: 3,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 4),
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(12, 22, 12, 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: InkWell(
                      onTap: onTap,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22.0),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/${articles[index].image}.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/images/fon.png',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                            Positioned(
                              // ignore: sort_child_properties_last
                              child: Text(
                                '| ${articles[index].title}',
                                style: const TextStyle(
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              right: 25,
                              left: 27,
                              // top: 80,
                              bottom: 12,
                            ),
                          ],
                        ),
                      ),
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
