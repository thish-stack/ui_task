import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final String title;
  final String totalScore;
  final String amount;
  final String productId;

  const MainCard({
    super.key,
    required this.title,
    required this.totalScore,
    required this.amount,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFB0D2C2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title row
          Padding(
            padding:
                const EdgeInsets.all(20), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_horiz, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Total Score
          const Text(
            'Total score',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          Text(
            totalScore,
            style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 20),

          
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
           
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.5, 
                    child: Image.asset(
                      'assets/gauge.png',
                      fit: BoxFit.cover, 
                    ),
                  ),
                ),

                // Amount and Product ID 
                Positioned(
                  bottom: 30, 
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white
                          .withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          amount,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          productId,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


