import 'package:flutter/material.dart';



class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int quantity1 = 1;
  int quantity2 = 1;

  @override
  Widget build(BuildContext context) {
    double itemPrice = 112;
    double orderTotal = (quantity1 + quantity2) * itemPrice;
    double itemsDiscount = 28.80;
    double couponDiscount = 15.80;
    double finalTotal = orderTotal - itemsDiscount - couponDiscount;

    return Scaffold(
      backgroundColor: Color(0xFFF6FBF8),
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
        title: Text("Cart", style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 4),
                Text("Deliver to My Flat", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("2 Items in your cart", style: TextStyle(fontSize: 16)),
                Text("+ Add more", style: TextStyle(color: Colors.green)),
              ],
            ),
            const SizedBox(height: 4),
            const Text("Delivery by 11pm, tomorrow", style: TextStyle(color: Colors.green)),
            const SizedBox(height: 16),
            buildCartItem("Holo Oncolis Sancer", quantity1, (q) => setState(() => quantity1 = q)),
            buildCartItem("Holo Oncolis Sancer", quantity2, (q) => setState(() => quantity2 = q)),
            const SizedBox(height: 16),
            buildUploadSection("Upload Prescription", "A valid prescription is required to purchase the following medicines."),
            const SizedBox(height: 12),
            buildUploadKYC(),
            const SizedBox(height: 16),
            buildCouponSection(),
            const SizedBox(height: 16),
            buildPaymentSummary(orderTotal, itemsDiscount, couponDiscount, finalTotal),
            const SizedBox(height: 8),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const Text("Get notification on whatsapp")
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Order for", style: TextStyle(color: Colors.grey)),
                Text("CHANGE", style: TextStyle(color: Colors.green)),
              ],
            ),
            const Text("Akshay Kumar", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Row(
              children: [
                Column(
                  children: [
                    Text('Total'),
                    Text('179.00',style: TextStyle(fontWeight: FontWeight.bold),),

                  ],
                ),
                Spacer(),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {},
                    child: const Text("Confirm & Pay", style: TextStyle(fontSize: 16,color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildCartItem(String name, int quantity, Function(int) onQtyChange) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            color: Colors.grey.shade300,
            child: Icon(Icons.medical_services),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                const Text("₹112"),
                const Text("Subscribe", style: TextStyle(color: Colors.green, fontSize: 12)),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                Row(
            children: [
              IconButton(
                onPressed: () {
                  if (quantity > 1) onQtyChange(quantity - 1);
                },
                icon: Icon(Icons.remove_circle,color: Colors.green,),
              ),
              Text(quantity.toString()),
              IconButton(
                onPressed: () => onQtyChange(quantity + 1),
                icon: Icon(Icons.add_circle,color: Colors.green,),
              ),
            ],
          ),
            ],
          ),
        
        ],
      ),
    );
  }

  Widget buildUploadSection(String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFDFF6E3),
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(subtitle, style: TextStyle(fontSize: 13)),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(width: 50, height: 50, color: Colors.grey.shade300),
              const SizedBox(width: 12),
            ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  ),
  onPressed: () {},
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: const [
      Icon(Icons.upload, color: Colors.white),
      SizedBox(width: 6),
      Text("Upload", style: TextStyle(color: Colors.white)),
    ],
  ),
),

            ],
          )
        ],
      ),
    );
  }

  Widget buildUploadKYC() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFFFF5E5),
        border: Border.all(color: Colors.orange.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("KYC Verification", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                Text("Upload your ID Proof for KYC Verification", style: TextStyle(fontSize: 13)),
              ],
            ),
          ),
            ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  ),
  onPressed: () {},
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: const [
      Icon(Icons.upload, color: Colors.white),
      SizedBox(width: 6),
      Text("Upload", style: TextStyle(color: Colors.white)),
    ],
  ),
),
        ],
      ),
    );
  }

 Widget buildCouponSection() {
  return Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.symmetric(vertical: 12),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Apply Coupon code",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "VIEW >",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Coupon Code",
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              "Apply",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}


  Widget buildPaymentSummary(double total, double discount, double coupon, double finalAmount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Payment Summary", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        buildSummaryRow("Order Total", total),
        buildSummaryRow("Items Discount", -discount),
        buildSummaryRow("Coupon Discount", -coupon),
        buildSummaryRow("Shipping", 0),
        const Divider(),
        buildSummaryRow("Total", finalAmount, isBold: true),
      ],
    );
  }

  Widget buildSummaryRow(String title, double value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            "₹${value.toStringAsFixed(2)}",
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isBold ? Colors.black : Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}
