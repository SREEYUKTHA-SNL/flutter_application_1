import 'package:flutter/material.dart';

class UploadPrescriptionScreen extends StatelessWidget {
  const UploadPrescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Upload Prescription',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upload Prescription',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'and let us arrange your medicines for you.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[50],
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text(
                    'Make sure your prescription contains the following elements as shown',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        DottedTextBox(text: "Dr. Abc XYZ\nMBBS, MD"),
                        SizedBox(height: 8),
                        DottedTextBox(text: "05/07/2023"),
                        SizedBox(height: 8),
                        DottedTextBox(text: "Patient Name\n32 M"),
                        SizedBox(height: 8),
                        DottedTextBox(text: "Medicine Details:\nahssjusjsh sj 650 mg\npge UV 50 mg - 2 after food"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'All uploads are encrypted & visible only to our pharmacists. '
              'Any prescription you upload is validated before processing the order.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                // Handle link tap
              },
              child: const Text(
                'What is a valid prescription?',
                style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1DB954),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  // Upload action
                },
                child: const Text(
                  'Upload Prescription',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DottedTextBox extends StatelessWidget {
  final String text;

  const DottedTextBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DottedBorderPainter(),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }
}

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    const double gap = 4;
    const double dotLength = 4;

    Path path = Path();

 
    for (double x = 0; x < size.width; x += dotLength + gap) {
      path.moveTo(x, 0);
      path.lineTo(x + dotLength, 0);
    }

    for (double x = 0; x < size.width; x += dotLength + gap) {
      path.moveTo(x, size.height);
      path.lineTo(x + dotLength, size.height);
    }


    for (double y = 0; y < size.height; y += dotLength + gap) {
      path.moveTo(0, y);
      path.lineTo(0, y + dotLength);
    }

    // Right border
    for (double y = 0; y < size.height; y += dotLength + gap) {
      path.moveTo(size.width, y);
      path.lineTo(size.width, y + dotLength);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
