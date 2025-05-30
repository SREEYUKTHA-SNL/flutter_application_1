import 'package:flutter/material.dart';

class AntiCancerDrugsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Acupoint-check Active Test Strip',
      'price': 112,
      'mrp': 242,
      'rating': 4.2,
      'ratingsCount': 1233,
      'discount': true,
      'inStock': true,
      'image': 'assets/images/product.png',
    },
    {
      'name': 'Acupoint-check Active Test Strip',
      'price': 112,
      'mrp': 242,
      'rating': 4.2,
      'ratingsCount': 1233,
      'discount': false,
      'inStock': false,
      'image': 'assets/images/product.png',
    },
    {
      'name': 'Acupoint-check Active Test Strip',
      'price': 112,
      'mrp': 242,
      'rating': 4.2,
      'ratingsCount': 1233,
      'discount': true,
      'inStock': true,
      'image': 'assets/images/product.png',
    },
    {
      'name': 'Acupoint-check Active Test Strip',
      'price': 112,
      'mrp': 242,
      'rating': 4.2,
      'ratingsCount': 1233,
      'discount': false,
      'inStock': false,
      'image': 'assets/images/product2.png',
    },
    {
      'name': 'Acupoint-check Active Test Strip',
      'price': 112,
      'mrp': 242,
      'rating': 4.2,
      'ratingsCount': 1233,
      'discount': false,
      'inStock': true,
      'image': 'assets/images/product.png',
    },
    {
      'name': 'Acupoint-check Active Test Strip',
      'price': 112,
      'mrp': 242,
      'rating': 4.2,
      'ratingsCount': 1233,
      'discount': true,
      'inStock': true,
      'image': 'assets/images/product.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAF8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text('Anti-Cancer Drugs',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Medicines',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (_) => const FilterSidebar(),
                    );
                  },
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.6,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(product['image'],
                                fit: BoxFit.contain),
                          ),
                          if (product['discount'])
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  '50% Discount',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Text(
                          product['name'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              ratingBox(4.2),
                              const SizedBox(width: 4),
                              const Text('1233 Ratings',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Row(
                          children: [
                            Text('MRP: ₹${product['mrp']}',
                                style: const TextStyle(
                                    fontSize: 10,
                                    decoration: TextDecoration.lineThrough)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              '₹${product['price']}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget ratingBox(double rating) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Color(0xffFFC000),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star, size: 12, color: Colors.white),
          const SizedBox(width: 2),
          Text(
            rating.toStringAsFixed(1),
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class FilterSidebar extends StatefulWidget {
  const FilterSidebar({super.key});

  @override
  State<FilterSidebar> createState() => _FilterSidebarState();
}

class _FilterSidebarState extends State<FilterSidebar> {
  String _selectedSort = 'price low to high';
  List<String> filterBy = ['Discount only', 'Include out of stock'];
  List<String> selectedFilters = [];

  List<String> brands = [
    'All brand',
    'Pfizer',
    'Sun Pharmaceutical',
    "Dr. Reddy's Laboratories",
    'Cipla',
    'Zydus Lifesciences',
  ];
  List<String> selectedBrands = [];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(left: Radius.circular(1)),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'Filter',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Sort By
                const Text(
                  'Sort by',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: ['price low to high', 'Price high to Low', 'Rating']
                      .map(
                        (option) => RadioListTile(
                          title: Text(option),
                          value: option,
                          groupValue: _selectedSort,
                          activeColor: Colors.green,
                          //controlAffinity: ListTileControlAffinity.trailing,
                          onChanged: (value) {
                            setState(() => _selectedSort = value!);
                          },
                          contentPadding: EdgeInsets.zero,
                        ),
                      )
                      .toList(),
                ),

                const SizedBox(height: 8),

                // Filter By
                const Text(
                  'Filter by',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: filterBy
                      .map(
                        (filter) => CheckboxListTile(
                          title: Text(filter),
                          value: selectedFilters.contains(filter),
                          activeColor: Colors.green,
                          // controlAffinity: ListTileControlAffinity.trailing,
                          onChanged: (checked) {
                            setState(() {
                              checked!
                                  ? selectedFilters.add(filter)
                                  : selectedFilters.remove(filter);
                            });
                          },
                          contentPadding: EdgeInsets.zero,
                        ),
                      )
                      .toList(),
                ),

                const SizedBox(height: 8),

                // Brands
                const Text(
                  'Brand',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView(
                    children: brands
                        .map(
                          (brand) => CheckboxListTile(
                            title: Text(brand),
                            value: selectedBrands.contains(brand),
                            activeColor: Colors.green,
                            //controlAffinity: ListTileControlAffinity.trailing,
                            onChanged: (checked) {
                              setState(() {
                                checked!
                                    ? selectedBrands.add(brand)
                                    : selectedBrands.remove(brand);
                              });
                            },
                            contentPadding: EdgeInsets.zero,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
