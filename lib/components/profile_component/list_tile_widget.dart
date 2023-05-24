import 'package:flutter/material.dart';
import '../../constants/profile_constants/text_style/app_text_style.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.iconData,
    required this.title,
    this.onTap,
  });
  final IconData iconData;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          iconData,
          size: 35,
        ),
        title: Text(
          title,
          style: AppTextStyle.f22w400,
        ),
      ),
    );
  }
}
