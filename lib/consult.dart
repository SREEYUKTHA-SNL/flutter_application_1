
import 'package:flutter/material.dart';

class ConsultScreen extends StatelessWidget {
  const ConsultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDF5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F8F5),
        elevation: 0,
        leading:Padding(
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
          'Consult',
          style: TextStyle(
            color: Color(0xFF000F3C),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Text('Kochi', style: TextStyle(color: Colors.black)),
                Icon(Icons.keyboard_arrow_down, color: Colors.black)
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
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
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search Doctors',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Consultation Buttons
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2DD1C0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Instant Chat Consultation',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2671D3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Instant Video Consultation',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Consultation Options
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color:  Colors.grey.shade300)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What do you need to consult for?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15,),
                  CustomPaint(
    painter: DottedLinePainter(),
    child: SizedBox(
      width: double.infinity,
      height: 1, // height of the line
    ),
  ),
                  const SizedBox(height: 16),
                  _consultOption(Icons.sick, 'I have symptom or condition that needs treatment'),
                  _consultOption(Icons.receipt_long, 'I want to understand my prescription or lab report'),
                  _consultOption(Icons.chat_bubble_outline, 'I need a second opinion'),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Free expert questions
            const Text(
              'Free expert answers to your health question',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: _questionCard('Asked for Female.', '50 years, Chennai', 'What are the early warning signs of cancer that people should not ignore?')),
                const SizedBox(width: 12),
                Expanded(child: _questionCard('Asked for Male.', '52 years, Delhi', 'What are the common symptoms of skin cancer that need attention?')),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: SizedBox(width: double.infinity,
              height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.green),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                  ),
                  child: const Text('Ask a Free Question',style: TextStyle(color: Colors.green,fontSize: 20),),
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Why consult
            const Text(
              'Why consult on cancer shop?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _whyConsultCard('100+', 'Qualified Doctors', Colors.pink.shade100),
                const SizedBox(width: 12),
                _whyConsultCard('100k+', 'Happy Customers', Colors.purple.shade100),
              ],
            ),
            const SizedBox(height: 24),

            // Meet our doctors
            const Text(
              'Meet our doctors',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _doctorCard('Dr. Ajay Kumar Gupta', 'MBBS, MD', '9932'),
                const SizedBox(width: 12),
                _doctorCard('Dr. Aleena John', 'MBBS, MD', '9932'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _consultOption(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
    );
  }

  Widget _questionCard(String user, String location, String question) {
    return Container(
      padding: const EdgeInsets.only(top: 12,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(user, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF000F3C))),
          Text(location, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 8),
          Text(question),
          const SizedBox(height: 8),
       
          Container(
            width: double.infinity,
            height: 40,
            color: Color(0xffDADAD6),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text('1 answer from doctors', style: TextStyle(color: Colors.grey)),
                  Spacer(),
                  CircleAvatar()
                ],
              ),
            )),
        ],
      ),
    );
  }

  Widget _whyConsultCard(String count, String label, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(count, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  Widget _doctorCard(String name, String title, String regNo) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(title),
          Text('Reg. No: $regNo'),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.green, size: 16),
              Icon(Icons.star, color: Colors.green, size: 16),
              Icon(Icons.star, color: Colors.green, size: 16),
              Icon(Icons.star, color: Colors.grey, size: 16),

              Text('4.0 (324)'),
            ],
          ),
          const Text('20 Years of Experience'),
        ],
      ),
    );
  }
}
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 5, dashSpace = 3, startX = 0;
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
