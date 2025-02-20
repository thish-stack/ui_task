import 'package:flutter/material.dart';

class SearchFilterRow extends StatelessWidget {
  const SearchFilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.search, size: 28),
          onPressed: () {},
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.more_horiz, size: 28),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.calendar_today, size: 28),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.folder, size: 28),
              onPressed: () {},
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFFE2D291),
              shape: const CircleBorder(),
              mini: true,
              elevation: 0,
              child: const Icon(Icons.add, color: Colors.black),
            )
          ],
        ),
      ],
    );
  }
}
