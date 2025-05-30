import 'package:flutter/material.dart';



class CouponPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
Widget buildOfferCard({
  required String label,
  required String code,
  required String description,
  required String condition,
  required Color tagColor,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: Row(
      children: [
        Container(
          width: 60,
          height: 100,
          decoration: BoxDecoration(
            color: tagColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          alignment: Alignment.center,
          child: RotatedBox(
            quarterTurns: -1,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      code,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0B0C1E),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Apply",
                      style: TextStyle(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                const DashedLine(height: 1, color: Colors.grey), // Dotted divider
                const SizedBox(height: 8),
                Text(
                  condition,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFBF5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFCFBF5),
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Apply Coupon",
          style: TextStyle(color: Colors.black),
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xffF3F2E9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: "Enter Coupon Code",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Text(
                    "Apply",
                    style: TextStyle(
                      color: Colors.green.withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "More Offers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            buildOfferCard(
              label: "FLATOFF",
              code: "CANCERUPI25",
              description: "Save ₹25 on this order using\n Credit card!",
              condition: "Flat ₹25 discount using Credit card on \norders above ₹225",
              tagColor: Color(0xff0B9B33),
            ),
            buildOfferCard(
              label: "CASHBACK",
              code: "CANCERUPI25",
              description: "Save ₹25 on this order using \nCredit card!",
             

              condition: "Flat ₹25 discount using Credit card on \norders above ₹225",
              tagColor: Color(0xff0B9B33),
            ),
          ],
        ),
      ),
    );
  }
  
}
class DashedLine extends StatelessWidget {
  final double height;
  final Color color;

  const DashedLine({this.height = 1, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 5.0;
        const dashSpace = 3.0;
        final dashCount = (boxWidth / (dashWidth + dashSpace)).floor();

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
