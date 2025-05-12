import 'package:flutter/material.dart';

import '../widgets/contact_info_item.dart';
import '../widgets/faq_item.dart';
import '../widgets/social_media_button.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Hero Section
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/contact_hero.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Center(
              child: Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Contact Information and Form
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Contact Information
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get in Touch',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8B4513),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'We\'d love to hear from you! Whether you have a question about our products, want to place an order, or are interested in wholesale opportunities, don\'t hesitate to reach out.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 32),
                      ContactInfoItem(
                        icon: Icons.phone,
                        title: 'Phone',
                        detail: '+1234567890',
                      ),
                      SizedBox(height: 16),
                      ContactInfoItem(
                        icon: Icons.email,
                        title: 'Email',
                        detail: 'info@adeembakery.com',
                      ),
                      SizedBox(height: 16),
                      ContactInfoItem(
                        icon: Icons.location_on,
                        title: 'Address',
                        detail: '123 Bakery Street, Flour City, FC 12345',
                      ),
                      SizedBox(height: 16),
                      ContactInfoItem(
                        icon: Icons.access_time,
                        title: 'Hours',
                        detail: 'Monday - Friday: 7:00 AM - 6:00 PM\nSaturday: 8:00 AM - 4:00 PM\nSunday: Closed',
                      ),
                      SizedBox(height: 32),
                      Text(
                        'Follow Us',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8B4513),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          SocialMediaButton(icon: Icons.facebook),
                          SizedBox(width: 16),
                          SocialMediaButton(icon: Icons.camera_alt),
                          SizedBox(width: 16),
                          SocialMediaButton(icon: Icons.video_library),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 48),
                // Contact Form
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Send Us a Message',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF8B4513),
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'First Name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Last Name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 16),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                            labelText: 'Subject',
                            border: OutlineInputBorder(),
                          ),
                          items: [
                            DropdownMenuItem(
                              value: 'general',
                              child: Text('General Inquiry'),
                            ),
                            DropdownMenuItem(
                              value: 'order',
                              child: Text('Place an Order'),
                            ),
                            DropdownMenuItem(
                              value: 'wholesale',
                              child: Text('Wholesale Information'),
                            ),
                            DropdownMenuItem(
                              value: 'feedback',
                              child: Text('Feedback'),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                        SizedBox(height: 16),
                        TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            labelText: 'Message',
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {
                            // Submit form logic
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Message Sent'),
                                content: Text('Thank you for your message! We will get back to you as soon as possible.'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('Close'),
                                  ),
                                ],
                              ),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFF8B4513)),
                            minimumSize: MaterialStateProperty.all(Size(200, 50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 24.0,
                            ),
                            child: Text(
                              'SEND MESSAGE',
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
          ),

          // Map Section
          Container(
            height: 400,
            color: Colors.grey[300],
            child: Center(
              child: Text(
                'Map Integration Here',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black54,
                ),
              ),
            ),
          ),

          // FAQ Section
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Frequently Asked Questions',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B4513),
                  ),
                ),
                SizedBox(height: 24),
                FAQItem(
                  question: 'How can I place an order?',
                  answer: 'You can place an order by calling us, sending an email, or using the contact form on this page. We recommend ordering at least 24 hours in advance to ensure availability.',
                ),
                FAQItem(
                  question: 'Do you deliver?',
                  answer: 'Yes, we offer delivery within a 10-mile radius of our bakery for orders over \$30. A delivery fee may apply depending on the distance.',
                ),
                FAQItem(
                  question: 'How long do your products stay fresh?',
                  answer: 'Our bread stays fresh for about 3-4 days when stored properly at room temperature in a paper bag or bread box. Our cookies stay fresh for up to a week when stored in an airtight container.',
                ),
                FAQItem(
                  question: 'Do your products contain allergens?',
                  answer: 'Our products are made in a facility that processes wheat, dairy, eggs, and nuts. While we take precautions to prevent cross-contamination, we cannot guarantee that our products are allergen-free.',
                ),
                FAQItem(
                  question: 'Do you offer wholesale options?',
                  answer: 'Yes, we offer wholesale pricing for cafes, restaurants, and other businesses. Please contact us for more information about our wholesale program.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
