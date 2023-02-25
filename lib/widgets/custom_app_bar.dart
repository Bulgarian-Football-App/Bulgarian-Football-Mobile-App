import 'package:flutter/material.dart';
import 'package:bg_football_app/utils/color_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 9.0),
        child: Image.asset(
          'assets/images/app_bar_logo.png',
          fit: BoxFit.contain,
        ),
      ),
      backgroundColor: ColorConstants.mainBlack,
      centerTitle: true,
    );
  }
}