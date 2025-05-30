
import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String selectedAddress = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCF7),
     appBar: AppBar(
  backgroundColor: const Color(0xFFF1F6E9),
  elevation: 0,
  leading: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(Icons.arrow_back, color: Colors.black),
    ),
  ),
  title: const Text("Address", style: TextStyle(color: Colors.black)),
  // centerTitle: true,
),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("2 Items in your cart", style: TextStyle(color: Colors.grey)),
                Column(
                  children: [
                    Text("TOTAL", style: TextStyle(fontSize: 18,color: Colors.grey)),
                Text(" ₹185.00", style: TextStyle(fontWeight: FontWeight.bold)),

                  ],
                ),

              ],
            ),
            const SizedBox(height: 24),
            const Text("Delivery Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 12),
            _addressCard(
              label: "Home",
              phone: "(205) 555-024",
              address: "1786 Wheeler Bridge",
              selected: selectedAddress == 'Home',
            ),
            const SizedBox(height: 12),
            _addressCard(
              label: "Office",
              phone: "(205) 555-024",
              address: "1786 Wheeler Bridge",
              selected: selectedAddress == 'Office',
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () {},
              child: const Text(
                "+ Add Address",
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: 4,
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Proceed", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_right_alt, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _addressCard({
    required String label,
    required String phone,
    required String address,
    required bool selected,
  }) {
    return GestureDetector(
      onTap: () => setState(() => selectedAddress = label),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: selected ? Colors.green : Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Radio<String>(
              value: label,
              groupValue: selectedAddress,
              onChanged: (value) => setState(() => selectedAddress = value!),
              activeColor: Colors.green,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(phone, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  Text(address, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ),
            const Icon(Icons.edit, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}