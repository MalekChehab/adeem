import 'package:adeem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../data/models/product_model.dart';
import '../../styles/apps_colors.dart';
import '../screens/product_info_page.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Card(
        color: AppColors.surface,
        elevation: 2,
        shadowColor: AppColors.secondary.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.imagePath,
              child: SizedBox(
                height: 250,
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
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: AppTextStyles.subHeader,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${product.price},000 L.L.',
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
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductInfoPage(product: product),
                      ),
                    ),
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
      ),
    );
  }
}