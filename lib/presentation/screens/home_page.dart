import 'package:adeem/presentation/screens/products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/featured_product_card.dart';
import '../widgets/promise_card.dart';
import 'about_page.dart';
import 'contact_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeContent(),
    ProductsPage(),
    AboutPage(),
    ContactPage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xFFFDF5E6), // Off-white background
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/images/adeem_logo_dark.svg',
              height: 50,
            ),
            SizedBox(width: 10),
            Text(
              'Adeem Bakery',
              style: TextStyle(
                color: Color(0xFF8B4513),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          width < 600.0 ? SizedBox() :
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                NavBarButton('Home', 0),
                NavBarButton('Products', 1),
                NavBarButton('About Us', 2),
                NavBarButton('Contact', 3),
              ],
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _pages,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add order functionality here
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Order Now'),
              content: Text('Contact us at +1234567890 to place your order.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Close'),
                ),
              ],
            ),
          );
        },
        label: Text('Order Now'),
        icon: Icon(Icons.shopping_basket),
        backgroundColor: Color(0xFF8B4513),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF8B4513),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/images/adeem_logo_dark.svg',
                    height: 60,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Adeem Bakery',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'A healthier option that doesn\'t compromise on taste',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                _navigateToPage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bakery_dining),
              title: Text('Products'),
              onTap: () {
                _navigateToPage(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () {
                _navigateToPage(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                _navigateToPage(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Widget NavBarButton(String title, int index) {
    bool isSelected = _selectedIndex == index;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () => _navigateToPage(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Color(0xFF8B4513) : Colors.black54,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            SizedBox(height: 4),
            if (isSelected)
              Container(
                height: 2,
                width: 20,
                color: Color(0xFF8B4513),
              ),
          ],
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Hero Section
          Container(
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bread_hero.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/adeem_logo_dark.svg',
                      height: 120,
                      color: Colors.white,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'ADEEM BAKERY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'A healthier option that doesn\'t compromise on taste',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to products page
                        PageController pageController = PageController(initialPage: 1);
                        pageController.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFF8B4513)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 12.0,
                        ),
                        child: Text(
                          'EXPLORE OUR PRODUCTS',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Featured Products
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OUR SPECIALTIES',
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
                      child: FeaturedProductCard(
                        imagePath: 'assets/images/whole_grain_bread.jpg',
                        title: 'Whole Grain Bread',
                        description: 'Made with organic whole wheat flour, oats, and a variety of nutritious seeds.',
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: FeaturedProductCard(
                        imagePath: 'assets/images/chocolate_cookies.jpg',
                        title: 'Artisanal Cookies',
                        description: 'Delicious cookies carefully crafted with dark chocolates and the finest all-natural ingredients.',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Our Promise
          Container(
            color: Color(0xFF8B4513).withOpacity(0.1),
            padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
            child: Column(
              children: [
                Text(
                  'OUR PROMISE',
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
            color: Color(0xFF3E2723),
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
                            height: 60,
                            color: Colors.white,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Adeem Bakery',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'A healthier option that doesn\'t compromise on taste',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
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
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(Icons.phone, color: Colors.white70, size: 16),
                              SizedBox(width: 8),
                              Text(
                                '+1234567890',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.email, color: Colors.white70, size: 16),
                              SizedBox(width: 8),
                              Text(
                                'info@adeembakery.com',
                                style: TextStyle(color: Colors.white70),
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
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(Icons.facebook, color: Colors.white70),
                              SizedBox(width: 8),
                              Text(
                                'Facebook',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.link, color: Colors.white70),
                              SizedBox(width: 8),
                              Text(
                                'Instagram',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Divider(color: Colors.white24),
                SizedBox(height: 16),
                Text(
                  '© 2025 Adeem Bakery. All rights reserved.',
                  style: TextStyle(color: Colors.white54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}