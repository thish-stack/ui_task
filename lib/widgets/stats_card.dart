
import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String title;
  final String dateRange;
  final String amount;
  final String subAmount;
  final String change;
  final bool isPositive;

  const StatsCard({
    super.key,
    required this.title,
    required this.dateRange,
    required this.amount,
    required this.subAmount,
    required this.change,
    this.isPositive = true,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const Icon(Icons.more_horiz_outlined,
                  color: Colors.white, size: 20),
            ],
          ),

          const SizedBox(height: 5),

         
          Text(dateRange,
              style: const TextStyle(fontSize: 12, color: Colors.grey)),

          const SizedBox(height: 10),

        
          Text(
            amount,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isPositive ? Colors.green : Colors.red,
            ),
          ),

          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              Text(
                subAmount,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: isPositive ? Colors.green[600] : Colors.red[600],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  change,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

