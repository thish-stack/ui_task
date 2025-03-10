import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavRail extends StatefulWidget {
  const CustomNavRail({super.key});

  @override
  _CustomNavRailState createState() => _CustomNavRailState();
}

class _CustomNavRailState extends State<CustomNavRail> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Background color to match bottom nav bar
      child: NavigationRail(
        backgroundColor: Colors.black,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        indicatorShape: const CircleBorder(), // Makes it circular
        indicatorColor: Colors.transparent, // Customize color
        useIndicator: true, // Ensure indicator is enabled
        labelType: NavigationRailLabelType.none, // Hide labels
        destinations: List.generate(5, (index) => _buildNavItem(index)),
      ),
    );
  }

  NavigationRailDestination _buildNavItem(int index) {
    List<String> icons = [
      'assets/icons/solar--chart-square-outline.svg',
      'assets/icons/solar--box-broken.svg',
      'assets/icons/solar--inbox-line-outline.svg',
      'assets/icons/solar--cart-4-outline.svg',
      'assets/icons/solar--menu-dots-outline.svg',
    ];

    return NavigationRailDestination(
      icon: NavBarItem(
          iconPath: icons[index], isSelected: _selectedIndex == index),
      selectedIcon: NavBarItem(iconPath: icons[index], isSelected: true),
      label: const SizedBox.shrink(), // Hide label
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String iconPath;
  final bool isSelected;

  const NavBarItem(
      {super.key, required this.iconPath, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? const Color(0xFFE2D291) : Colors.transparent,
      ),
      child: SvgPicture.asset(
        iconPath,
        // width: 28,
        // height: 28,
        colorFilter: ColorFilter.mode(
          isSelected ? Colors.black : Colors.white54,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}