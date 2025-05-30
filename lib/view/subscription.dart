import 'package:flutter/material.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFBF7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE6F1E8),
        elevation: 0,
        title: const Text("Subscription", style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Container(color: const Color.fromARGB(255, 187, 209, 188),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 187, 209, 188),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                ),
                onPressed: () {},
                child: const Text("Add Subscription", style: TextStyle(color: Colors.green)),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Subscription", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              const Text("Next Refill Date : 11/02/2025", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 16),
              const Text("Products", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),

              // Product 1
              _buildProductItem(
                imagePath: 'assets/black_bottle.png',
                title: 'Holo Oncolis Sancer',
                subtitle: 'Bottle of 500 pellets',
                price: '₹112',
              ),
              const SizedBox(height: 10),

              // Product 2
              _buildProductItem(
                imagePath: 'assets/white_bottle.png',
                title: 'Holo Oncolis Sancer',
                subtitle: 'Bottle of 500 pellets',
                price: '₹112',
              ),
              const Divider(height: 30),
              _buildInfoRow("Total Amount", "₹499", fontWeight: FontWeight.bold),
              _buildInfoRow("Payment Method", "UPI", valueColor: Colors.green),
              _buildInfoRow("Delivery Frequency", "5", valueColor: Colors.green),
              const SizedBox(height: 12),
              const Text("Delivery Address", style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold)),
              const Text("(205) 555-024\n1786 Wheeler Bridge"),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.green),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      ),
                      onPressed: () {},
                      child: const Text("Cancel Subscription", style: TextStyle(color: Colors.green)),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      ),
                      onPressed: () {},
                      child: const Text("Update", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductItem({
    required String imagePath,
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade200,
            image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.contain),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(subtitle, style: const TextStyle(color: Colors.grey)),
              Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Quantity", style: TextStyle(color: Colors.grey)),
            Text("1", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value, {Color? valueColor, FontWeight fontWeight = FontWeight.normal}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value, style: TextStyle(color: valueColor ?? Colors.black, fontWeight: fontWeight)),
        ],
      ),
    );
  }
}
