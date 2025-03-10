import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

class SearchFilterRow extends StatelessWidget {
  const SearchFilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left Icon (Search) - Takes up minimal space
        IconButton(
          icon: const Icon(SolarIconsOutline.magnifier),
          onPressed: () {},
        ),

        // Right Icons - Shrink proportionally
        Flexible(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: IconButton(
                  icon: const Icon(SolarIconsOutline.menuDots),
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: const Icon(SolarIconsOutline.calendarMinimalistic),
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: const Icon(SolarIconsOutline.folderOpen),
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: const Color(0xFFE2D291),
                  shape: const CircleBorder(),
                  mini: true,
                  elevation: 0,
                  child: const Icon(SolarIconsOutline.addSquare,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}