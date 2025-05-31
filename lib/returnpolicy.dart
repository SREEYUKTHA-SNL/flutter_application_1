import 'package:flutter/material.dart';

class Returnpolicy extends StatelessWidget {
  const Returnpolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDF5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F8F5),
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
        title: const Text(
          'Return Policy',
          style: TextStyle(
            color: Color(0xFF000F3C),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text( "At CancerShop, we are committed to providing our customers with quality products and an exceptional shopping experience. If you are not fully satisfied with your purchase, we're here to help."),
           
           
            SectionHeader(title: 'Return Eligibility'),
             BulletList(items: [
              'All orders are subject to availability and confirmation.',
              'We reserve the right to refuse or cancel any order at our discretion.',
              'Payment must be made in full at the time of order via approved payment methods.',
             
            ]),
            SectionHeader(title: '3. Products and Services'),
            SectionBody(
              text:
                  'We offer a variety of products designed to support cancer patients. However, we do not provide medical advice, diagnosis, or treatment. Always consult a qualified healthcare provider regarding any health-related concerns.',
            ),
            SectionHeader(title: '4. Orders and Payments'),
            BulletList(items: [
              'All orders are subject to availability and confirmation.',
              'We reserve the right to refuse or cancel any order at our discretion.',
              'Payment must be made in full at the time of order via approved payment methods.',
              'Prices are subject to change without notice.',
            ]),
            SectionHeader(title: '5. Shipping and Delivery'),
            BulletList(items: [
              'Delivery timelines are estimates and not guarantees.',
              'We are not liable for delays caused by third-party logistics partners.',
              'Shipping costs, taxes, and duties (if applicable) will be calculated at checkout.',
            ]),
            SectionHeader(title: '6. Returns and Refunds'),
            BulletList(items: [
              'We offer returns/exchanges for unused products within [insert time period, e.g., 7 or 14 days] of delivery, subject to our Return Policy.',
              'Due to hygiene and safety, certain items like wigs, innerwear, or medical devices may be non-returnable.',
              'Refunds will be processed to the original payment method within [insert timeframe, e.g., 5–10 business days].',
            ]),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 6),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}

class SectionBody extends StatelessWidget {
  final String text;
  const SectionBody({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 14, height: 1.6),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> items;
  const BulletList({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(fontSize: 14)),
                  Expanded(
                    child: Text(
                      item,
                      style: const TextStyle(fontSize: 14, height: 1.4),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
