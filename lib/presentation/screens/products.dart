import 'package:adeem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../data/models/product_model.dart';
import '../../styles/apps_colors.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/product_card.dart';

class Products extends StatelessWidget {
  // List of products
  final List<Product> breadProducts = [
    Product(
      name: 'Multi-Seed Bread',
      price: '300,000',
      description:
          'Our signature bread made with organic whole wheat flour, oats, sunflower seeds, black seeds, flax, chia, and sesame seeds. Enhanced with honey and olive oil, with the benefits of sourdough.',
      imagePath: 'assets/images/multi_grain_bread.png',
    ),
  ];

  final List<Product> cookieProducts = [
    Product(
      name: 'Dark Chocolate Oatmeal Cookies',
      price: '250,000',
      description:
          'Delicious cookies made with butter, oats, and premium dark chocolate. Available in regular and mini sizes.',
      imagePath: 'assets/images/chocolate_cookies.jpg',
    ),
    Product(
      name: 'Mini Cookie Assortment',
      price: '150,000',
      description:
          'A box of 24 mini cookies in various flavors. Perfect for parties or as a gift.',
      imagePath: 'assets/images/mini_cookies.jpg',
    ),
  ];

  Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('Our Products', style: AppTextStyles.header),
                  ),
                  SizedBox(height: 40),

                  // Bread Section
                  Text('Breads', style: AppTextStyles.header),
                  SizedBox(height: 8),
                  Text(
                    'Our breads are made with organic ingredients, no additives or preservatives',
                    style: AppTextStyles.italicDetails,
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    width: 600,
                    child: Card(
                      color: AppColors.surface,
                      elevation: 2,
                      shadowColor: AppColors.secondary.withValues(alpha: 0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 250,
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(8),
                              ),
                              child: Image.asset(
                                'assets/images/multi_grain_bread.png',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(26.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Multi-Grain Bread',
                                  style: AppTextStyles.subHeader,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '300,000 L.L.',
                                  style: AppTextStyles.details,
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'Our signature bread made with organic whole wheat flour, oats, sunflower seeds, black seeds, flax, chia, and sesame seeds. Enhanced with honey and olive oil, with the benefits of sourdough.',
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
                    ),
                  ),

                  // GridView.builder(
                  //   shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 3,
                  //     // childAspectRatio: 0.8,
                  //     // crossAxisSpacing: 20,
                  //     // mainAxisSpacing: 20,
                  //   ),
                  //   itemCount: breadProducts.length,
                  //   itemBuilder: (context, index) {
                  //     return ProductCard(product: breadProducts[index]);
                  //   },
                  // ),
                  SizedBox(height: 48),

                  // Cookies Section
                  Text(
                    'Artisanal Cookies',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8B4513),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Delicious cookies made with high-quality ingredients',
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  SizedBox(height: 24),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: cookieProducts.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: cookieProducts[index]);
                    },
                  ),

                  SizedBox(height: 48),

                  // Ingredients Section
                  Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Color(0xFF8B4513).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our Ingredients',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF8B4513),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'We believe in transparency. Here\'s what goes into our products:',
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                        SizedBox(height: 24),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Breads',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF8B4513),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  IngredientItem('Organic Whole Wheat Flour'),
                                  IngredientItem('Organic Oats'),
                                  IngredientItem('Sunflower Seeds'),
                                  IngredientItem('Black Seeds'),
                                  IngredientItem('Flax Seeds'),
                                  IngredientItem('Chia Seeds'),
                                  IngredientItem('Sesame Seeds'),
                                  IngredientItem('Honey'),
                                  IngredientItem('Olive Oil'),
                                  IngredientItem('Sea Salt'),
                                  IngredientItem('Yeast (minimal amount)'),
                                  IngredientItem('Organic Milk Powder'),
                                  IngredientItem('Sourdough Starter'),
                                  IngredientItem('Water'),
                                ],
                              ),
                            ),
                            SizedBox(width: 40),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cookies',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF8B4513),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  IngredientItem('Organic Butter'),
                                  IngredientItem('Organic Sugar'),
                                  IngredientItem('Organic Eggs'),
                                  IngredientItem('Pure Vanilla Extract'),
                                  IngredientItem('Baking Powder'),
                                  IngredientItem('Baking Soda'),
                                  IngredientItem('Lemon Essence'),
                                  IngredientItem('Sea Salt'),
                                  IngredientItem('Cinnamon'),
                                  IngredientItem('Organic Flour'),
                                  IngredientItem('Organic Oats'),
                                  IngredientItem('Premium Dark Chocolate'),
                                ],
                              ),
                            ),
                          ],
                        ),
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
  }

  Widget IngredientItem(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Color(0xFF8B4513), size: 16),
          SizedBox(width: 8),
          Text(name, style: TextStyle(fontSize: 14, color: Colors.black87)),
        ],
      ),
    );
  }
}
