import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'icon': Icons.person_outline, 'title': 'Add/Manage Profile'},
    {'icon': Icons.shopping_bag_outlined, 'title': 'My Orders'},
    {'icon': Icons.verified_user_outlined, 'title': 'KYC Verifications'},
    {'icon': Icons.description_outlined, 'title': 'My Prescription'},
    {'icon': Icons.medical_services_outlined, 'title': 'My Consultations'},
    {'icon': Icons.alarm, 'title': 'Pill Reminder'},
    {'icon': Icons.star_border, 'title': 'Rate your recent purchases'},
    {'icon': Icons.payment, 'title': 'Manage Payment Methods'},
    {'icon': Icons.help_outline, 'title': 'Help & Support'},
    {'icon': Icons.info_outline, 'title': 'About Cancer shop'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff666666),
                    radius: 28,
                    child: Text(
                      'A',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ajay Kumar',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '+91 9986543321',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'EDIT',
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Wallet & Subscription
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.account_balance_wallet, color: Colors.white),
                              SizedBox(width: 8),
                              Text('Wallet', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            '₹499.00',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.green),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_today, color: Colors.green),
                              SizedBox(width: 8),
                              Text('Subscription', style: TextStyle(color: Colors.green)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            '02 - Jan 2025',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Menu List with Icons
              ...menuItems.map((item) => ListTile(
                    leading: Icon(item['icon'], color: Colors.black),
                    title: Text(item['title']),
                    trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    onTap: () {},
                  )),

              // Logout
              ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text('Logout', style: TextStyle(color: Colors.red)),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
