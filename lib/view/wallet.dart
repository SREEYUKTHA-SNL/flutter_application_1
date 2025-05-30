import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAF5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEFF4E9),
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
        title: const Text("Wallet", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWalletCard(),
            const SizedBox(height: 24),
            const Text(
              "Transactions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildTransactionItem(
              icon: Icons.shopping_bag,
              label: 'Order Placed',
              date: "16 Mar '25, 03:00 PM",
              amount: '₹400',
              isCredit: false,
            ),
            Divider(),
            _buildTransactionItem(
              icon: Icons.arrow_upward,
              label: 'Add Money',
              date: "16 Mar '25, 03:00 PM",
              amount: '₹4000',
              isCredit: true,
            ),
            Divider(),

            _buildTransactionItem(
              icon: Icons.add,
              label: 'Consultation',
              date: "16 Mar '25, 03:00 PM",
              amount: '₹400',
              isCredit: false,
            ),
            Divider(),

            _buildTransactionItem(
              icon: Icons.shopping_bag,
              label: 'Order Placed',
              date: "16 Mar '25, 03:00 PM",
              amount: '₹400',
              isCredit: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWalletCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.account_balance_wallet, color: Colors.white),
              SizedBox(width: 8),
              Text(
                "Wallet",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "₹499.00",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: SizedBox(
              width: 400,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("Add Money"),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTransactionItem({
    required IconData icon,
    required String label,
    required String date,
    required String amount,
    required bool isCredit,
  }) {
    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundColor:  Colors.green,
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(date, style: const TextStyle(color: Colors.grey)),
      trailing: Text(
        amount,
        style: TextStyle(
          color: isCredit ? Colors.green : Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () {},
    );
  }
}
