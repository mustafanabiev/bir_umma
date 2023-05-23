// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bir_umma/constants/color.dart';
import 'package:flutter/material.dart';

import '../../../components/models/namaz_page_model.dart';
class BeshUbakNamazPage extends StatelessWidget {
  const BeshUbakNamazPage({
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
        backgroundColor: Appcolors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Даарат',
          style: TextStyle(color: Appcolors.grey),
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
              itemCount: 5,
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
                              'assets/png/${beshUbakNamaz[index].image}.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            
                            Positioned(
                              // ignore: sort_child_properties_last
                              child: Text(
                                '| ${beshUbakNamaz[index].title}',
                                style: const TextStyle(
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              right: 25,
                              left: 27,
                             
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
