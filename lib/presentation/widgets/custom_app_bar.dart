import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/apps_colors.dart';
import '../screens/about_us_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 100,
      toolbarHeight: 100,
      backgroundColor: AppColors.background,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          top: 4.0,
        ),
        child: SvgPicture.asset(
          'assets/images/adeem_logo_light.svg',
          height: 30,
        ),
      ),
      actionsPadding: const EdgeInsets.only(
        right: 10.0,
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Our Products',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 18,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Contact Us',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 18,
            ),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUsPage(),)),
          child: const Text(
            'About Us',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
