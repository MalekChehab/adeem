import 'package:adeem/presentation/screens/products.dart';
import 'package:adeem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/apps_colors.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/value_card.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: CustomScrollView(
          slivers: [
            CustomAppBar(),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'About Adeem',
                            style: AppTextStyles.header,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Our Story, Mission, and Values',
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColors.primary.withValues(alpha: 0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Our Story
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our Story',
                          style: AppTextStyles.subHeader,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Adeem Bakery was born from a passion for creating delicious bread that nourishes both body and soul. We started as a small home bakery with a simple mission: to create bread that combines traditional baking methods with modern nutritional knowledge.',
                          style: AppTextStyles.details,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Over time, we became increasingly concerned about the quality of commercially available bread. Many loaves on store shelves contained unnecessary additives, preservatives, and refined flours stripped of their natural nutrients.',
                          style: AppTextStyles.details,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'After years of experimentation with different flours, seeds, and baking techniques, Adeem\'s signature bread recipe was perfected. The result was a nutritious loaf that didn\'t compromise on taste or texture and proved that healthy bread could also be delicious.',
                          style: AppTextStyles.details,
                        ),
                        SizedBox(height: 16),
                        RichText(
                          text: TextSpan(
                            text: 'Today, Adeem has expanded to offer not just our signature bread but also nutritious cookies that follow the same philosophy: ',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Karma',
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondary,
                            ),
                            children: [
                              TextSpan(
                                text: 'quality ingredients, traditional methods, and no unnecessary additives.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Our Name
                  Container(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    padding: EdgeInsets.all(24),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Our Name',
                                style: AppTextStyles.subHeader,
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Adeem’ (أديم) in Arabic refers to bread that is mixed with a condiment, like broth, oil, or vinegar. It symbolizes the idea of bread as a staple food that is enjoyed with various pairings, reflecting the cultural practice of enhancing its flavor and nutritional value through simple, complementary additions.',
                                style: AppTextStyles.italicDetails,
                              ),
                              SizedBox(height: 16),
                              Text(
                                'The name also connects to the rich tradition of bread-making that spans cultures and civilizations throughout human history. It reminds us that bread is one of the most fundamental foods, connecting people across time and culture.',
                                style: AppTextStyles.details,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/images/adeem_logo_light.svg',
                              height: 200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Our Values
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our Values',
                          style: AppTextStyles.subHeader,
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            Expanded(
                              child: ValueCard(
                                icon: Icons.health_and_safety,
                                title: 'Health',
                                description: 'We prioritize nutritional value in all our products, using whole ingredients that support wellbeing.',
                              ),
                            ),
                            Expanded(
                              child: ValueCard(
                                icon: Icons.eco,
                                title: 'Sustainability',
                                description: 'We source organic ingredients and use environmentally friendly practices whenever possible.',
                              ),
                            ),
                            Expanded(
                              child: ValueCard(
                                icon: Icons.star,
                                title: 'Quality',
                                description: 'We never compromise on the quality of our ingredients or our baking methods.',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            Expanded(
                              child: ValueCard(
                                icon: Icons.handshake,
                                title: 'Community',
                                description: 'We believe in building relationships with our customers and supporting our local community.',
                              ),
                            ),
                            Expanded(
                              child: ValueCard(
                                icon: Icons.lightbulb,
                                title: 'Innovation',
                                description: 'We continuously explore new recipes and techniques that align with our commitment to health and taste.',
                              ),
                            ),
                            Expanded(
                              child: ValueCard(
                                icon: Icons.lock,
                                title: 'Transparency',
                                description: 'We are open about our ingredients and processes, because we believe you deserve to know what\'s in your food.',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Call to Action
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                    color: AppColors.primary,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Taste the Adeem Experience',
                            style: AppTextStyles.footerTitle,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Experience bread and cookies made with care, quality ingredients, and a commitment to your health.',
                            style: AppTextStyles.footerSubTitle,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Products(),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(AppColors.background),
                              foregroundColor: WidgetStatePropertyAll(AppColors.primary),
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
                        ],
                      ),
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
