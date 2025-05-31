import 'package:flutter/material.dart';

class AboutCancerShopScreen extends StatelessWidget {
  const AboutCancerShopScreen({Key? key}) : super(key: key);

  final List<String> menuItems = const [
    'About Us',
    'Contact Us',
    "FAQ's",
    'Return Policy',
    'Privacy Policy',
    'Terms & Conditions',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDF5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F8F5),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
                
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
        ),
        title: const Text(
          'About Cancer shop',
          style: TextStyle(
            color: Color(0xFF000F3C),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300),borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            
          
            child: ListTile(
              title: Text(
                menuItems[index],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000F3C),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
              onTap: () {
                // Add navigation or action
              },
            ),
          );
        },
      ),
    );
  }
}