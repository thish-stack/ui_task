import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

class SearchFilterRow extends StatelessWidget {
  const SearchFilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(SolarIconsOutline.magnifier, size: 28),
          onPressed: () {},
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(SolarIconsOutline.menuDots, size: 28),
              onPressed: () {},
            ),
            IconButton(
              icon:
                  const Icon(SolarIconsOutline.calendarMinimalistic, size: 28),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(SolarIconsOutline.folderOpen, size: 28),
              onPressed: () {},
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFFE2D291),
              shape: const CircleBorder(),
              mini: true,
              elevation: 0,
              child: const Icon(SolarIconsOutline.addSquare,
                  size: 28, color: Colors.black),
            )
          ],
        ),
      ],
    );
  }
}
