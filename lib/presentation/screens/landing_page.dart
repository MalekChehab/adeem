import 'package:adeem/presentation/screens/products.dart';
import 'package:adeem/styles/app_text_styles.dart';
import 'package:adeem/styles/apps_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'dart:js' as js;

import '../widgets/custom_app_bar.dart';
import '../widgets/featured_product_card.dart';
import '../widgets/promise_card.dart';

final String facebookLink = 'https://www.facebook.com/share/16W8msZp4U/';
final String instagramLink = 'https://www.instagram.com/adeem.bread?igsh=MTA4dmtnanFmcTA4dA==';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: width < 700 ? height / 12 : height / 10,
                ),

                // Image
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                      ),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'ADEEM',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontFamily: 'Lora',
                          fontSize: width < 700 ? 120 : 180,
                          fontWeight: FontWeight.bold,
                        ),
                        /// TODO check how to change font size relatively automatically
                      ),
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: height,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/bread_no_bg.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 120.0,
                          ),
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Products(),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(AppColors.background),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18.0,
                                vertical: 10.0,
                              ),
                              child: Text(
                                'EXPLORE OUR PRODUCTS',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Featured Products
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'OUR SPECIALTIES',
                        style: AppTextStyles.header,
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: FeaturedProductCard(
                              imagePath: 'assets/images/multi_grain_bread.png',
                              title: 'Multi Grain Bread',
                              description: 'Made with organic whole wheat flour, oats, and a variety of nutritious seeds.',
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: FeaturedProductCard(
                              imagePath: 'assets/images/cookies_mini.png',
                              title: 'Oats Cookies',
                              description: 'Delicious cookies carefully crafted with oats, dark chocolates and the finest all-natural ingredients.',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Our Promise
                Container(
                  color: Color(0xFF764328).withOpacity(0.1),
                  padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                  child: Column(
                    children: [
                      Text(
                        'OUR PROMISE',
                        style: AppTextStyles.header,
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: PromiseCard(
                              icon: Icons.eco,
                              title: 'All Natural Ingredients',
                              description: 'We use only organic ingredients with no additives or preservatives.',

                            ),
                          ),
                          Expanded(
                            child: PromiseCard(
                              icon: Icons.health_and_safety,
                              title: 'Health Focused',
                              description: 'Our recipes prioritize nutritional value without sacrificing taste.',
                            ),
                          ),
                          Expanded(
                            child: PromiseCard(
                              icon: Icons.star,
                              title: 'Artisanal Quality',
                              description: 'Each product is crafted with care and attention to detail.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Footer
                Container(
                  padding: EdgeInsets.all(24),
                  color: AppColors.primary,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/adeem_logo_dark.svg',
                                  height: 80,
                                ),
                                SizedBox(height: 8),
                                SizedBox(height: 8),
                                Text(
                                  'A healthier option that doesn\'t compromise on taste',
                                  style: AppTextStyles.footerDetails,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact Us',
                                  style: AppTextStyles.footerTitle,
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {},
                                          icon: Icon(
                                            PhosphorIconsThin.phone,
                                          ),
                                          color: AppColors.background,
                                        ),
                                        IconButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {},
                                          icon: Icon(
                                            PhosphorIconsThin.whatsappLogo,
                                          ),
                                          color: AppColors.background,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '+961 81 990 582',
                                      style: AppTextStyles.footerDetails,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {},
                                      icon: Icon(
                                        PhosphorIconsThin.envelope,
                                      ),
                                      color: AppColors.background,
                                    ),
                                    Text(
                                      'adeem.bread@gmail.com',
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTextStyles.footerDetails,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Follow Us',
                                  style: AppTextStyles.footerTitle,
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () => js.context.callMethod('open', [instagramLink]),
                                      icon: Icon(
                                        PhosphorIconsThin.instagramLogo,
                                      ),
                                      color: AppColors.background,
                                    ),
                                    Text(
                                      'Instagram',
                                      style: AppTextStyles.footerDetails,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () => js.context.callMethod('open', [facebookLink]),
                                      icon: Icon(
                                        PhosphorIconsThin.facebookLogo,
                                      ),
                                      color: AppColors.background,
                                    ),
                                    Text(
                                      'Facebook',
                                      style: AppTextStyles.footerDetails,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Divider(color: AppColors.background),
                      SizedBox(height: 16),
                      Text(
                        '© 2025 Adeem. All rights reserved.',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
