// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../gen/assets.gen.dart';

class AitNamazPage extends StatelessWidget {
  const AitNamazPage({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 270,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            flexibleSpace: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                    Assets.png.video.path,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    
                  ],
                ),
              ),
            ),
            leading: IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.arrow_back_ios),
            ),
            actions: const [
              Icon(
                Icons.bookmark_outline,
                size: 30,
              ),
              SizedBox(width: 10)
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 10,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        size: 28,
                      ),
                    
                    ),
                     const Text('210',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),),
                    const SizedBox(width: 45),
                   const Icon(Icons.visibility,size: 28,),
                   const Text('1123',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),),
                   const SizedBox(width: 45),
                  
                    IconButton(
                      onPressed: () async{
                        Share.share("Tes");
                      },
                      icon: const Icon(
                        Icons.share_outlined,
                        size: 28,
                      ),
                      
                    ),
                    
                    const SizedBox(width: 5),
                    const Text(
                      '2413',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
                Card(
                  color: const Color(0xffF1F6F9),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 35, 15, 55),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Ait Namaz',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 22),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                            \nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                          style: TextStyle(fontSize: 20),
                        
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

