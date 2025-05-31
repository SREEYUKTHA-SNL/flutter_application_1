import 'package:flutter/material.dart';

class MyConsultationsScreen extends StatelessWidget {
  final List<Map<String, String>> consultations = [
    {
      'name': 'Dr. Aleena John',
      'type': 'Chat consultation',
      'image': 'assets/doctor1.png',
      'button': 'Chat',
    },
    {
      'name': 'Dr. Adam John',
      'type': 'Video Consultation',
      'image': 'assets/doctor2.png',
      'button': 'View',
    },
    {
      'name': 'Dr. Aleena John',
      'type': 'Video Consultation',
      'image': 'assets/doctor1.png',
      'button': 'View',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEF8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
      
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        title: const Text(
          "My Consultations",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: consultations.length,
          itemBuilder: (context, index) {
            final item = consultations[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                
               
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(item['image']!),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['name']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          item['type']!,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(item['button']!,style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
