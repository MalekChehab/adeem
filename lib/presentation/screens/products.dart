import 'package:flutter/material.dart';

import 'package:adeem/styles/app_text_styles.dart';
import '../../data/models/product_model.dart';
import '../../data/products_info/ingredients.dart';
import '../../data/products_info/nutrition_facts.dart';
import '../../styles/apps_colors.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/product_card.dart';


class Products extends StatelessWidget {

  // List of products
  final List<Product> breadProducts = [
    Product(
      name: 'Multi-Seed Bread',
      price: '300',
      description: 'Our signature bread is crafted with organic whole wheat flour, oats, sunflower seeds, black seeds, flax, chia, and sesame seeds. Enhanced with honey and olive oil, and naturally fermented with the benefits of sourdough. Packed with health benefits, including: '
          '\n- Made with organic, wholesome ingredients. '
          '\n- Packed with dietary fiber for improved digestive health. '
          '\n- Sugar-free for a healthier lifestyle. '
          '\n- Gentle on the stomach, making it suitable for sensitive digestion. '
          '\n- Promotes bowel health with natural nutrients. '
          '\n- Contains beneficial bacteria from sourdough for a healthy gut.',
      imagePath: 'assets/images/multi_grain_bread.png',
      ingredients: breadIngredients,
      nutritionFactsPerPiece: breadSliceNutrition,
      nutritionFactsTotal: totalBreadNutrition,
      servingName: 'Slice',
      servingWeight: 30,
      totalWeight: 450,
    ),
  ];

  final List<Product> cookieProducts = [
    Product( //0
      name: 'Mini Cookies (3pcs)',
      price: '45',
      description: 'Three delightful mini cookies, perfect for little hands or a quick sweet craving.',
      imagePath: 'assets/images/mini_cookies.jpg',
      ingredients: cookieIngredients,
      nutritionFactsPerPiece: oneMiniCookieNutrition,
      nutritionFactsTotal: threeMiniCookieNutrition,
      servingName: 'Cookie',
      servingWeight: 10,
      totalWeight: 30,
    ),
    Product(//1
      name: 'Cookies (2pcs)',
      price: '70',
      description: 'Two soft and flavorful cookies, ideal for a quick treat on the go.',
      imagePath: 'assets/images/cookies_2_pcs.png',
      ingredients: cookieIngredients,
      nutritionFactsPerPiece: oneCookieNutrition,
      nutritionFactsTotal: twoCookieNutrition,
      servingName: 'Cookie',
      servingWeight: 24,
      totalWeight: 48,
    ),
    Product(//2
      name: 'Mini Cookies (10pcs)',
      price: '150',
      description: 'A bundle of 10 irresistible mini cookies, perfect for sharing happiness.',
      imagePath: 'assets/images/mini_cookies.jpg',
      ingredients: cookieIngredients,
      nutritionFactsPerPiece: oneMiniCookieNutrition,
      nutritionFactsTotal: tenMiniCookieNutrition,
      servingName: 'Cookie',
      servingWeight: 10,
      totalWeight: 100,
    ),
    Product(//3
      name: 'Cookies Box (7pcs)',
      price: '250',
      description: 'Seven freshly baked cookies in a compact box, made for sharing or indulging.',
      imagePath: 'assets/images/cookies_7_pcs.png',
      ingredients: cookieIngredients,
      nutritionFactsPerPiece: oneCookieNutrition,
      nutritionFactsTotal: sevenCookieNutrition,
      servingName: 'Cookie',
      servingWeight: 24,
      totalWeight: 168,
    ),
    Product(//4
      name: 'Cookies Gift Box (12pcs)',
      price: '600',
      description: 'A beautifully crafted gift box with 12 premium cookies—an elegant way to spread joy.',
      imagePath: 'assets/images/cookies_gift_box_12_pcs.jpg',
      ingredients: cookieIngredients,
      nutritionFactsPerPiece: oneCookieNutrition,
      nutritionFactsTotal: twelveCookieNutrition,
      servingName: 'Cookie',
      servingWeight: 24,
      totalWeight: 288,
    ),
    Product(//5
      name: 'Cookies Gift Box (16pcs)',
      price: '900',
      description: 'A luxurious gift box filled with 16 decadent cookies, perfect for any special occasion.',
      imagePath: 'assets/images/cookies_gift_box_16_pcs.jpg',
      ingredients: cookieIngredients,
      nutritionFactsPerPiece: oneCookieNutrition,
      nutritionFactsTotal: sixteenCookieNutrition,
      servingName: 'Cookie',
      servingWeight: 24,
      totalWeight: 384,
    ),
    Product(//6
      name: 'Mini Cookies Gift Box (45pcs)',
      price: '1,000',
      description: 'A treasure trove of 45 bite-sized delights in a gift box, crafted to impress and indulge.',
      imagePath: 'assets/images/mini_cookies.jpg',
      ingredients: cookieIngredients,
      nutritionFactsPerPiece: oneMiniCookieNutrition,
      nutritionFactsTotal: fortyFiveMiniCookieNutrition,
      servingName: 'Cookie',
      servingWeight: 10,
      totalWeight: 450,
    ),
    Product(//7
      name: 'Cookies 1/2 kg',
      price: '550',
      description: 'Half a kilogram of rich, flavorful cookies—ideal for gatherings or indulgent moments.',
      imagePath: 'assets/images/cookies_half_kg.png',
      ingredients: cookieIngredients,
      nutritionFactsPerPiece: oneCookieNutrition,
      nutritionFactsTotal: twentyOneCookieNutrition,
      servingName: 'Cookie',
      servingWeight: 24,
      totalWeight: 500,
    ),
    Product(//8
      name: 'Mini Cookies 1/2 kg',
      price: '600',
      description: 'Half a kilogram of our finest mini cookies, perfect for sharing, gifting, or savoring solo.',
      imagePath: 'assets/images/mini_cookies_half_kg.png',
      ingredients: cookieIngredients,
      nutritionFactsPerPiece: oneMiniCookieNutrition,
      nutritionFactsTotal: fiftyMiniCookieNutrition,
      servingName: 'Cookie',
      servingWeight: 10,
      totalWeight: 500,
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
                  SizedBox(height: 30),

                  // Bread Section
                  Text('Breads', style: AppTextStyles.header),
                  SizedBox(height: 8),
                  Text(
                    'Our breads are made with organic ingredients, no additives or preservatives',
                    style: AppTextStyles.italicDetails,
                  ),
                  SizedBox(height: 24),
                  ProductCard(product: breadProducts[0]),
                  SizedBox(height: 48),

                  // Cookies Section
                  Text('Cookies', style: AppTextStyles.header),
                  SizedBox(height: 8),
                  Text(
                    'Classic indulgence, one cookie at a time.',
                    style: AppTextStyles.italicDetails,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Explore our collection of freshly baked cookies, each crafted to perfection. From rich flavors to soft textures, these treats are perfect for any moment you want to savor.',
                    style: AppTextStyles.details,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ProductCard(product: cookieProducts[1]),
                      SizedBox(width: 16),
                      ProductCard(product: cookieProducts[3]),
                      SizedBox(width: 16),
                    ],
                  ),
                  SizedBox(height: 48),

                  // Mini Cookies Section
                  Text('Mini Cookies', style: AppTextStyles.header),
                  SizedBox(height: 8),
                  Text(
                    'Tiny treats, big joy.',
                    style: AppTextStyles.italicDetails,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Our mini cookies are bite-sized delights packed with flavor. Perfect for snacking, sharing, or enjoying guilt-free indulgence wherever you go.',
                    style: AppTextStyles.details,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ProductCard(product: cookieProducts[0]),
                      SizedBox(width: 16),
                      ProductCard(product: cookieProducts[2]),
                      SizedBox(width: 16),
                    ],
                  ),
                  SizedBox(height: 48),

                  // Gift Boxes Section
                  Text('Gift Boxes', style: AppTextStyles.header),
                  SizedBox(height: 8),
                  Text(
                    'The sweetest way to show you care.',
                    style: AppTextStyles.italicDetails,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Celebrate special moments with our thoughtfully curated cookie gift boxes. Elegant, delicious, and sure to leave a lasting impression on anyone who receives them.',
                    style: AppTextStyles.details,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ProductCard(product: cookieProducts[4]),
                      SizedBox(width: 16),
                      ProductCard(product: cookieProducts[5]),
                      SizedBox(width: 16),
                      ProductCard(product: cookieProducts[6]),
                      SizedBox(width: 16),
                    ],
                  ),
                  SizedBox(height: 48),

                  // Generous Portions Section
                  Text('Generous Portions', style: AppTextStyles.header),
                  SizedBox(height: 8),
                  Text(
                    'Plenty to share, or not—your call.',
                    style: AppTextStyles.italicDetails,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Big on flavor and quantity, these generously sized cookie packs are perfect for gatherings, family nights, or simply stocking up on your favorite treats.',
                    style: AppTextStyles.details,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ProductCard(product: cookieProducts[7]),
                      SizedBox(width: 16),
                      ProductCard(product: cookieProducts[8]),
                      SizedBox(width: 16),
                    ],
                  ),


                  SizedBox(height: 48),

                  // Ingredients Section
                  // Container(
                  //   padding: EdgeInsets.all(24),
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF8B4513).withOpacity(0.1),
                  //     borderRadius: BorderRadius.circular(8),
                  //   ),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         'Our Ingredients',
                  //         style: TextStyle(
                  //           fontSize: 24,
                  //           fontWeight: FontWeight.bold,
                  //           color: Color(0xFF8B4513),
                  //         ),
                  //       ),
                  //       SizedBox(height: 16),
                  //       Text(
                  //         'We believe in transparency. Here\'s what goes into our products:',
                  //         style: TextStyle(fontSize: 16, color: Colors.black87),
                  //       ),
                  //       SizedBox(height: 24),
                  //       Row(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Expanded(
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(
                  //                   'Breads',
                  //                   style: TextStyle(
                  //                     fontSize: 18,
                  //                     fontWeight: FontWeight.bold,
                  //                     color: Color(0xFF8B4513),
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 12),
                  //                 IngredientItem('Organic Whole Wheat Flour'),
                  //                 IngredientItem('Organic Oats'),
                  //                 IngredientItem('Sunflower Seeds'),
                  //                 IngredientItem('Black Seeds'),
                  //                 IngredientItem('Flax Seeds'),
                  //                 IngredientItem('Chia Seeds'),
                  //                 IngredientItem('Sesame Seeds'),
                  //                 IngredientItem('Honey'),
                  //                 IngredientItem('Olive Oil'),
                  //                 IngredientItem('Sea Salt'),
                  //                 IngredientItem('Yeast (minimal amount)'),
                  //                 IngredientItem('Organic Milk Powder'),
                  //                 IngredientItem('Sourdough Starter'),
                  //                 IngredientItem('Water'),
                  //               ],
                  //             ),
                  //           ),
                  //           SizedBox(width: 40),
                  //           Expanded(
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(
                  //                   'Cookies',
                  //                   style: TextStyle(
                  //                     fontSize: 18,
                  //                     fontWeight: FontWeight.bold,
                  //                     color: Color(0xFF8B4513),
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 12),
                  //                 IngredientItem('Organic Butter'),
                  //                 IngredientItem('Organic Sugar'),
                  //                 IngredientItem('Organic Eggs'),
                  //                 IngredientItem('Pure Vanilla Extract'),
                  //                 IngredientItem('Baking Powder'),
                  //                 IngredientItem('Baking Soda'),
                  //                 IngredientItem('Lemon Essence'),
                  //                 IngredientItem('Sea Salt'),
                  //                 IngredientItem('Cinnamon'),
                  //                 IngredientItem('Organic Flour'),
                  //                 IngredientItem('Organic Oats'),
                  //                 IngredientItem('Premium Dark Chocolate'),
                  //               ],
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget ingredientItem(String name) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 4.0),
  //     child: Row(
  //       children: [
  //         Icon(Icons.check_circle, color: Color(0xFF8B4513), size: 16),
  //         SizedBox(width: 8),
  //         Text(name, style: TextStyle(fontSize: 14, color: Colors.black87)),
  //       ],
  //     ),
  //   );
  // }
}
