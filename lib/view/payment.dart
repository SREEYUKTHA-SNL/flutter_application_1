import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedMethod = 'Wallet';

  final List<Map<String, dynamic>> paymentOptions = [
    {
      'title': 'Wallet',
      'subtitle': 'Remaining Balance : ₹185.00',
      'icon': Icons.account_balance_wallet_outlined,
    },
    {
      'title': 'Cash on Delivery',
      'subtitle': 'Need to pay 20% in Advance',
      'icon': Icons.local_shipping_outlined,
    },
    {
      'title': 'UPI',
      'subtitle': '',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Credit / Debit Card',
      'subtitle': '',
      'icon': Icons.credit_card,
    },
    {
      'title': 'Net Banking',
      'subtitle': '',
      'icon': Icons.account_balance,
    },
    {
      'title': 'EMI',
      'subtitle': '',
      'icon': Icons.payments_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F6E9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F6E9),
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
        title: const Text("Payment", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(child: Text("2 Items in your cart")),
                Column(
                  children: [
                    Text("TOTAL", style: TextStyle(color: Colors.black54)),
                     Text(
                  "₹185.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                  ],
                ),
                SizedBox(width: 8),
               
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Payment method",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: paymentOptions.length,
              itemBuilder: (context, index) {
                final option = paymentOptions[index];
                final title = option['title'] as String;
                final subtitle = option['subtitle'] as String;
                final icon = option['icon'] as IconData;
                final isSelected = selectedMethod == title;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedMethod = title;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelected ? Colors.green.withOpacity(0.05) : Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(icon, size: 32),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title,
                                    style: const TextStyle(fontWeight: FontWeight.bold)),
                                if (subtitle.isNotEmpty)
                                  Text(
                                    subtitle,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: isSelected
                                    ? Colors.green
                                    : Colors.grey.shade400,
                              ),
                            ),
                            child: isSelected
                                ? Center(
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                    ),
                                  )
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Handle confirm and pay
                },
                child: const Text(
                  "Confirm & Pay",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
