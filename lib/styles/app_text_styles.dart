import 'package:flutter/material.dart';

import 'apps_colors.dart';

class AppTextStyles {
  // Header text style using Lora
  static const TextStyle header = TextStyle(
    fontFamily: 'Lora',
    fontSize: 46,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  // SubHeader text style using Roboto Slab
  static const TextStyle subHeader = TextStyle(
    fontFamily: 'RobotoSlab',
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static const TextStyle appBarText = TextStyle(
    fontSize: 18,
    color: AppColors.primary,
  );

  // Detail text style using Karma
  static const TextStyle details = TextStyle(
    fontSize: 18,
    color: AppColors.secondary,
  );

  static const TextStyle italicDetails = TextStyle(
    fontSize: 18,
    fontStyle: FontStyle.italic,
    color: AppColors.secondary,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 15,
    color: AppColors.background,
  );

  static const TextStyle footerTitle = TextStyle(
    fontSize: 32,
    fontFamily: 'Lora',
    fontWeight: FontWeight.bold,
    color: AppColors.background,
  );

  static const TextStyle footerSubTitle = TextStyle(
    fontSize: 18,
    fontFamily: 'RobotoSlab',
    color: AppColors.background,
  );

  static const TextStyle footerDetails = TextStyle(
    fontSize: 16,
    color: AppColors.background,
  );
}
