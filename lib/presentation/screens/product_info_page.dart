import 'package:flutter/material.dart';

import '../../data/models/product_model.dart';
import '../../styles/app_text_styles.dart';
import '../../styles/apps_colors.dart';
import '../widgets/custom_app_bar.dart';

class ProductInfoPage extends StatelessWidget {
  final Product product;

  const ProductInfoPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      product.imagePath,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Product Name
                  Row(
                    children: [
                      Text(
                        product.name,
                        style: AppTextStyles.header,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '(${product.totalWeight}g)',
                        style: AppTextStyles.subHeader,
                      ),
                    ],
                  ),
                  Text(
                    '${product.price},000 L.L.',
                    style: AppTextStyles.italicDetails,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.description,
                    style: AppTextStyles.details,
                  ),
                  const Divider(height: 30, thickness: 1),

                  // Ingredients
                  Container(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ingredients',
                              style: AppTextStyles.subHeader,
                            ),
                            const SizedBox(height: 10),
                            ...product.ingredients.map((ingredient) => Text(
                              '• $ingredient',
                              style: AppTextStyles.details,
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const Divider(height: 30, thickness: 1),
                  // Nutrition Facts
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nutrition Facts',
                          style: AppTextStyles.subHeader,
                        ),
                        const SizedBox(height: 10),
                        // Per Piece
                        Text(
                          'Per Serving: 1 ${product.servingName} (${product.servingWeight}g)',
                          style: AppTextStyles.italicDetails.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ...product.nutritionFactsPerPiece.entries.map((entry) => Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                entry.key,
                                style: AppTextStyles.details,
                              ),
                              Text(
                                entry.value,
                                style: AppTextStyles.details,
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                  const Divider(height: 30, thickness: 1),

                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Nutrition Value (${product.totalWeight}g)',
                          style: AppTextStyles.italicDetails.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ...product.nutritionFactsTotal.entries.map((entry) => Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                entry.key,
                                style: AppTextStyles.details,
                              ),
                              Text(
                                entry.value,
                                style: AppTextStyles.details,
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
      ;
  }
}
