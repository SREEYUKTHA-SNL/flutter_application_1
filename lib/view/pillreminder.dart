import 'package:flutter/material.dart';



class MissedPillsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> missedReminders = [
    {
      'time': '09:00pm',
      'meal': 'Dinner',
      'medications': ['Paracetamols', 'Cyclophosphamide'],
    },
    {
      'time': '10:00pm',
      'meal': 'Lunch',
      'medications': ['Paracetamols', 'Cyclophosphamide'],
    },
    {
      'time': '10:00pm',
      'meal': 'Lunch',
      'medications': ['Paracetamols', 'Cyclophosphamide'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCF7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text(
          'Pill Reminder',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey.shade300),
                      backgroundColor: Colors.white,
                    ),
                    child: Text('Timeline'),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF22A45D),
                    ),
                    child: Text('Missed'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: missedReminders.length,
              itemBuilder: (context, index) {
                final reminder = missedReminders[index];
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Today"),
                            Text(
                              'With ${reminder['meal']}',
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          reminder['time'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 12),
                        ...reminder['medications']
                            .map<Widget>((med) => Text(med))
                            .toList(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF22A45D),
        child: Icon(Icons.add),
      ),
    );
  }
}
