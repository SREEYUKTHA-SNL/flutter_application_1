import 'package:flutter/material.dart';

class PharmacyScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'title': 'Anti- Cancer Drugs',
      'icon': Icons.vaccines,
      'selected': true,
    },
    {
      'title': 'Pain relief &\nPalliative Care',
      'icon': Icons.volunteer_activism,
    },
    {
      'title': 'Nutritional\nSupplements',
      'icon': Icons.medication,
    },
    {
      'title': 'Hygiene &\nPersonal Care',
      'icon': Icons.shield,
    },
    {
      'title': 'Medical\nEquipment\'s',
      'icon': Icons.add,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfdf5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Pharmacy",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              height: 50,
              child: Row(
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Medicines",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.qr_code_scanner),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Order Through
            const Text("ORDER THROUGH", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child:Container(
                    height: 45,
  decoration: BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Color(0xFF54D4A7),
        Color(0xFF20B299),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  child: ElevatedButton.icon(
    onPressed: () {},
    icon: const Icon(Icons.receipt_long, color: Colors.white),
    label: const Text("Prescription", style: TextStyle(color: Colors.white)),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
)

                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 45,
                      decoration: BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Color(0xFF4DAF58),
        Color(0xFF0B9B33),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.phone),
                      label: const Text("WhatsApp"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("CATEGORIES", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("VIEW ALL", style: TextStyle(color: Colors.green)),
              ],
            ),
            const SizedBox(height: 16),
            // Grid of Categories
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 3 / 2.5,
                children: categories.map((category) {
                  final isSelected = category['selected'] ?? false;
                  return Container(
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.green[600] : const Color(0xfff0f0f0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(category['icon'], color: isSelected ? Colors.white : Colors.green, size: 40),
                        const SizedBox(height: 8),
                        Text(
                          category['title'],
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
