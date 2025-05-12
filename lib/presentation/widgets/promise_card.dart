import 'package:adeem/styles/app_text_styles.dart';
import 'package:adeem/styles/apps_colors.dart';
import 'package:flutter/material.dart';

class PromiseCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const PromiseCard({super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 48,
            color: AppColors.primary,
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: AppTextStyles.subHeader,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: AppTextStyles.details,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}