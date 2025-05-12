import 'package:adeem/presentation/screens/home_page.dart';
import 'package:adeem/presentation/screens/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adeem',
      theme: ThemeData(
        // primaryColor: Color(0xFF8B4513), // Brown color for bakery theme
        // hintColor: Color(0xFFF5F5DC), // Beige color for accent
        fontFamily: 'Karma',
        // textTheme: TextTheme(
          // headline1: TextStyle(
          //   fontSize: 32.0,
          //   fontWeight: FontWeight.bold,
          //   color: Color(0xFF8B4513),
          // ),
          // headline2: TextStyle(
          //   fontSize: 24.0,
          //   fontWeight: FontWeight.w600,
          //   color: Color(0xFF8B4513),
          // ),
          // bodyText1: TextStyle(
          //   fontSize: 16.0,
          //   color: Colors.black87,
          // ),
        // ),
      ),
      home: LandingPage(),
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// This class will need to be added after the main Flutter app setup
// class ImageCarousel extends StatefulWidget {
//   final List<String> images;
//
//   const ImageCarousel({super.key, required this.images});
//
//   @override
//   ImageCarouselState createState() => ImageCarouselState();
// }
//
// class ImageCarouselState extends State<ImageCarousel> {
//   int _currentIndex = 0;
//   final PageController _pageController = PageController();
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 300,
//           child: PageView.builder(
//             controller: _pageController,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             itemCount: widget.images.length,
//             itemBuilder: (context, index) {
//               return Image.asset(
//                 widget.images[index],
//                 fit: BoxFit.cover,
//               );
//             },
//           ),
//         ),
//         SizedBox(height: 16),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: List.generate(
//             widget.images.length,
//                 (index) => Container(
//               margin: EdgeInsets.symmetric(horizontal: 4),
//               width: 8,
//               height: 8,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: _currentIndex == index
//                     ? Color(0xFF8B4513)
//                     : Colors.grey.withOpacity(0.5),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }