import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String title;
  final String dateRange;
  final String amount;
  final String? change;

  const StatsCard({
    super.key,
    required this.title,
    required this.dateRange,
    required this.amount,
    this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(dateRange, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          const SizedBox(height: 10),
          Text(amount,style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          if (change != null)
            Text(change!, style: TextStyle(color: change!.contains('-') ? Colors.red : Colors.green)),
        ],
      ),
    );
  }
}

