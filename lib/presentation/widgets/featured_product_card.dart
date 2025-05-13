import 'package:adeem/styles/app_text_styles.dart';
import 'package:adeem/styles/apps_colors.dart';
import 'package:flutter/material.dart';

class FeaturedProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback? onPressed;

  const FeaturedProductCard({super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColors.secondary.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: AppColors.surface,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.subHeader,
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: AppTextStyles.details,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: onPressed,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                      ),
                      child: Text(
                        'Learn More',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}