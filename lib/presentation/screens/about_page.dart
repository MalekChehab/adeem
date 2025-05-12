import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/value_card.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hero Section
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bakery_interior.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About Adeem',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Our Story, Mission, and Values',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B4513),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Adeem Bakery was born from a passion for creating delicious bread that nourishes both body and soul. We started as a small home bakery with a simple mission: to create bread that combines traditional baking methods with modern nutritional knowledge.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Our founder, a dedicated baker with years of experience, became increasingly concerned about the quality of commercially available bread. Many loaves on store shelves contained unnecessary additives, preservatives, and refined flours stripped of their natural nutrients.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'After years of experimentation with different flours, seeds, and baking techniques, Adeem\'s signature bread recipe was perfected. The result was a nutritious loaf that didn\'t compromise on taste or texture – proving that healthy bread could also be delicious.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Today, Adeem has expanded to offer not just our signature bread but also nutritious cookies that follow the same philosophy: quality ingredients, traditional methods, and no unnecessary additives.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          // Our Name
          Container(
            color: Color(0xFF8B4513).withOpacity(0.1),
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
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8B4513),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        '"Adeem" (أديم) in Arabic refers to the surface of the earth, the soil that nurtures growth. It symbolizes our connection to nature and our commitment to using natural ingredients that come from the earth.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'The name also connects to the rich tradition of bread-making that spans cultures and civilizations throughout human history. It reminds us that bread is one of the most fundamental foods, connecting people across time and place.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/adeem_logo_dark.svg',
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
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B4513),
                  ),
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
            color: Color(0xFF8B4513),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Taste the Adeem Difference',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Experience bread and cookies made with care, quality ingredients, and a commitment to your health.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.9),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to products page
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Color(0xFF8B4513)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                        vertical: 16.0,
                      ),
                      child: Text(
                        'ORDER NOW',
                        style: TextStyle(fontSize: 16),
                      ),
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
}
