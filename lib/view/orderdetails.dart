import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text('Order Details'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.orange.shade100,
                  child: const Icon(Icons.inventory_2, color: Colors.orange),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Order ID #0012345', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 4),
                    Text('12 Items • On Delivery', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Divider(color: Color.fromARGB(255, 124, 120, 120),),
            const Text('Products', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            
            ProductTile(),
            ProductTile(),
            const SizedBox(height: 24),
            const Text('Payment Summary', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const Divider(),
            SummaryRow(label: 'Status', valueWidget: StatusChip(label: 'Completed')),
            SummaryRow(label: 'Method', value: 'UPI'),
            SummaryRow(label: 'Order Total', value: '228.80'),
            SummaryRow(label: 'Items Discount', value: '-28.80'),
            SummaryRow(label: 'Coupon Discount', value: '-15.80'),
            SummaryRow(label: 'Shipping', value: 'Free'),
            const Divider(),
            SummaryRow(label: 'Total', value: '₹185.00', isTotal: true),
            const SizedBox(height: 12),
            Row(
              children: const [
                Icon(Icons.download, size: 18, color: Colors.green),
                SizedBox(width: 4),
                Text("Download tax invoice", style: TextStyle(color: Colors.green,  decoration: TextDecoration.underline)),
                Spacer(),
                Icon(Icons.refresh, size: 18, color: Colors.green),
                SizedBox(width: 4),
                Text("Re order", style: TextStyle(color: Colors.green)),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Cancel Order", style: TextStyle(color: Colors.red)),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.red),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                       shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Help",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                       shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.shade200,
            ),
            child: const Icon(Icons.medical_services, size: 30, color: Colors.blue),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Holo Oncolis Sancer', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Bottle of 500 pellets', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 4),
                Text('₹112'),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text('Quantity'),
              Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Row(
                children: [
              Icon(Icons.add_box_outlined, size: 18, color: Colors.green),

                  Text("Add to cart", style: TextStyle(color: Colors.green, fontSize: 12)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final String? value;
  final Widget? valueWidget;
  final bool isTotal;

  const SummaryRow({
    required this.label,
    this.value,
    this.valueWidget,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: isTotal ? FontWeight.bold : FontWeight.normal)),
          valueWidget ??
              Text(
                value ?? '',
                style: TextStyle(
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                  color: isTotal ? Colors.black : null,
                ),
              ),
        ],
      ),
    );
  }
}

class StatusChip extends StatelessWidget {
  final String label;
  const StatusChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(label, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
    );
  }
}
