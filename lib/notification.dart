import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      'title': 'Your order has been Shipped',
      'message':
          'Your order has been successfully shipped and is on its way! You’ll receive another update once it’s out for delivery.',
      'icon': Icons.local_shipping,
      'highlight': true,
      'color': Colors.green,
    },
    {
      'title': 'It’s time to refill your medication!',
      'message':
          'To ensure you don’t miss a dose, place your refill order today. We’re here to help you stay on track with your treatment.',
      'icon': Icons.medication,
      'highlight': true,
      'color': Colors.green,
    },
    // Dimmed repeated entries
    ...List.generate(
      4,
      (_) => {
        'title': 'It’s time to refill your medication!',
        'message':
            'To ensure you don’t miss a dose, place your refill order today. We’re here to help you stay on track with your treatment.',
        'icon': Icons.notifications_none,
        'highlight': false,
        'color': Colors.grey,
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfdf5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
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
          "Notifications",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                "Clear All",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: item['highlight'] ? item['color'].withOpacity(0.08) : Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              border: item['highlight']
                  ? Border.all(color: item['color'], width: 1)
                  : Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  item['icon'],
                  color: item['highlight'] ? item['color'] : Colors.grey,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: item['highlight'] ? Colors.black : Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item['message'],
                        style: TextStyle(
                          fontSize: 13,
                          color: item['highlight'] ? Colors.black87 : Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                if (!item['highlight'])
                  const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
              ],
            ),
          );
        },
      ),
    );
  }
}
