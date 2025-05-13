import 'package:adeem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../data/models/product_model.dart';
import '../../styles/apps_colors.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: AppColors.surface,
      elevation: 2,
      shadowColor: AppColors.secondary.withValues(alpha:0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // decoration: BoxDecoration(
      //   color: AppColors.surface,
      //   borderRadius: BorderRadius.circular(8),
      //   boxShadow: [
      //     BoxShadow(
      //       color: AppColors.secondary.withValues(alpha:0.1),
      //       blurRadius: 5,
      //       offset: Offset(0, 2),
      //     ),
      //   ],
      // ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 250.0,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              child: Image.asset(
                product.imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: AppTextStyles.subHeader,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text(
                  '${product.price} L.L.',
                  style: AppTextStyles.details,
                ),
                SizedBox(height: 12),
                Text(
                  product.description,
                  style: AppTextStyles.italicDetails,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      AppColors.primary,
                    ),
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
    );
  }
}