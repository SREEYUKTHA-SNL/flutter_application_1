import 'package:flutter/material.dart';

class VideoConsultationPage extends StatelessWidget {
  const VideoConsultationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('Video Consultation'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDoctorCard(),
            const SizedBox(height: 16),
            _buildCouponSection(),
            const SizedBox(height: 16),
            _buildBillDetails(),
            const SizedBox(height: 16),
            _buildPromiseSection(),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(value: false, onChanged: (val) {}),
                const Text('Get notification on whatsapp'),
              ],
            ),
            const Divider(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Appointment for\nAkshay Kumar', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('CHANGE', style: TextStyle(color: Colors.green))
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total', style: TextStyle(fontSize: 16)),
                const Text('₹185.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: const Text('Confirm & Pay'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorCard() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Dr. Aleena John', style: TextStyle(fontWeight: FontWeight.bold)),
                const Text('MBBS, MD (Oncologist)'),
                const Text('10 years experience overall'),
                const SizedBox(height: 4),
                Row(
                  children: const [
                    Icon(Icons.message, size: 16, color: Colors.green),
                    SizedBox(width: 4),
                    Text('1524 Patient Stories')
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300)
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                            decoration: BoxDecoration(color: Colors.green.shade100, borderRadius: BorderRadius.circular(4)),
                            child: const Row(
                              children: [
                                Icon(Icons.thumb_up, size: 14, color: Colors.green),
                                SizedBox(width: 4),
                                Text('90%', style: TextStyle(color: Colors.green)),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text("Patients"),
                              Text("Recommended"),

                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      const SizedBox(width: 8),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal:2, vertical: 2),
                            decoration: BoxDecoration(color: Colors.orange.shade100, borderRadius: BorderRadius.circular(4)),
                            child: const Row(
                              children: [
                                Icon(Icons.star, size: 14, color: Colors.orange),
                                SizedBox(width: 4),
                                Text('4.8', style: TextStyle(color: Colors.orange)),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text("Hospital Excellence"),
                              Text("Rating"), 
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCouponSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Apply Coupon code'),
              Text('VIEW', style: TextStyle(color: Colors.green))
            ],
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 48,
            alignment: Alignment.centerLeft,
            child: const Text('Enter Coupon Code', style: TextStyle(color: Colors.grey)),
          )
        ],
      ),
    );
  }

  Widget _buildBillDetails() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Bill Details', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Row(
            children: [
              Text('Consultation Fee '),
              Spacer(),
          Text('₹499'),

            ],
          ),

          Row(
            children: [
              Text('Service Fee & Tax'),
              Spacer(),
              Text('₹4'),

            ],
          ),
          Divider(),
          Row(
            children: [
              Text('Total Payable ', style: TextStyle(fontWeight: FontWeight.bold)),Spacer(),
              Text(' ₹499', style: TextStyle(fontWeight: FontWeight.bold)),

            ],
          )
        ],
      ),
    );
  }

  Widget _buildPromiseSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green.shade200),
        borderRadius: BorderRadius.circular(12),
        color: Colors.green.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Cancer Shop Promise', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Row(
            children: [Icon(Icons.check_circle, color: Colors.green), SizedBox(width: 8), Expanded(child: Text('Appointment confirmed instantly with the doctor'))],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green),
              SizedBox(width: 8),
              Expanded(child: Text('We assure we will connect you to the doctor. If not, 100% money back'))
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [Icon(Icons.check_circle, color: Colors.green), SizedBox(width: 8), Expanded(child: Text('24/7 live chat support to address all your queries'))],
          ),
        ],
      ),
    );
  }
}
