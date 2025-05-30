import 'package:flutter/material.dart';

class SetReminderPage extends StatelessWidget {
  const SetReminderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFBF7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE6F1E8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Set Reminder',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Medicine Name"),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter medicine name",
                  filled: true,
                  fillColor: const Color(0xFFF3F1EA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Schedule", style: TextStyle(color: Colors.green)),
              const SizedBox(height: 8),
              const Text("Daily"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F1EA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(border: InputBorder.none),
                  value: "Until I stop",
                  items: ["Until I stop", "1 Week", "2 Weeks"]
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 24),
              const Text("Set Routine", style: TextStyle(color: Colors.green)),
              const SizedBox(height: 12),
              ...[
                _routineItem("09:00AM", "1 Tablet with Breakfast", false),
                _routineItem("02:00PM", "1 Tablet with Lunch", true),
                _routineItem("09:00PM", "1 Tablet with Dinner", false),
              ],
              const SizedBox(height: 12),
              Container(
                   margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.add, color: Colors.green),
                    SizedBox(width: 4),
                    Text("Add New Event", style: TextStyle(color: Colors.green)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text("Save", style: TextStyle(fontSize: 16,color: Colors.white)),
        ),
      ),
    );
  }

  Widget _routineItem(String time, String note, bool checked) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Checkbox(value: checked, onChanged: (val) {},activeColor: Colors.green,),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(time, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(note, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("EDIT", style: TextStyle(color: Colors.green)),
          )
        ],
      ),
    );
  }
}
