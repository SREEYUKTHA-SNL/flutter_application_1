import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  String selectedFilter = 'All';

  final List<String> filters = ['All', 'On Delivery', 'Completed', 'Cancelled'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEFF6E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text("My Orders", style: TextStyle(color: Colors.black)),
        //centerTitle: true,
      ),
      body: Column(
        children: [
          // Filters
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: filters.map((filter) {
                final isSelected = selectedFilter == filter;
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ChoiceChip(

                     side: BorderSide.none,
                    label: Text(filter),
                    selected: isSelected,
                    onSelected: (_) {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                    selectedColor: Colors.green,
                    backgroundColor: Colors.grey.shade200,
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          // Order card
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: [
                _buildOrderCard(
                  id: "#0012345",
                  itemCount: 12,
                  status: "On Delivery",
                  timeline: ["Order Placed", "Order Confirmed", "On Delivery", "Order Delivered"],
                  completedSteps: 3,
                  color: Colors.amber,
                  expanded: true,
                ),
                _buildOrderCard(
                  id: "#0012345",
                  itemCount: 12,
                  status: "Completed",
                  timeline: [],
                  completedSteps: 4,
                  color: Colors.green,
                ),
                _buildOrderCard(
                  id: "#0012345",
                  itemCount: 12,
                  status: "Cancelled",
                  timeline: [],
                  completedSteps: 0,
                  color: Colors.red,
                ),
                 _buildOrderCard(
                  id: "#0012345",
                  itemCount: 12,
                  status: "Completed",
                  timeline: [],
                  completedSteps: 4,
                  color: Colors.green,
                ),
                 _buildOrderCard(
                  id: "#0012345",
                  itemCount: 12,
                  status: "Completed",
                  timeline: [],
                  completedSteps: 4,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

Widget _buildOrderCard({
  required String id,
  required int itemCount,
  required String status,
  required List<String> timeline,
  required int completedSteps,
  required Color color,
  bool expanded = false,
}) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: ExpansionTile(
      initiallyExpanded: expanded,
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: const Icon(Icons.inventory_2, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Order ID $id", style: const TextStyle(fontWeight: FontWeight.bold)),
                Text("$itemCount Items • $status", style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
      children: expanded
          ? [
              Column(
                children: List.generate(timeline.length, (index) {
                  bool isCompleted = index < completedSteps;
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Timeline section
                      Container(
                        width: 40,
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: isCompleted ? Colors.green : Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            ),
                            if (index < timeline.length - 1)
                              Container(
                                width: 2,
                                height: 40,
                                color: Colors.grey.shade400,
                              ),
                          ],
                        ),
                      ),

                      // Content section
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(timeline[index],
                                style: const TextStyle(fontWeight: FontWeight.w500)),
                            const SizedBox(height: 4),
                            const Text(
                              "January 19th, 12:02 AM",
                              style: TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ),
              Padding(
  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
  child: Row(
    children: [
      // Unselected button (Track Delivery)
      Expanded(
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.green, // text color
            side: const BorderSide(color: Colors.green),
            backgroundColor: Colors.green.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text("Track Delivery"),
        ),
      ),
      const SizedBox(width: 12),
      
      // Selected button (View Details)
      Expanded(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 4,
          ),
          child: const Text("View Details"),
        ),
      ),
    ],
  ),
)

            ]
          : [],
    ),
  );
}

}
