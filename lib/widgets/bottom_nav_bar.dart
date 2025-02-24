import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white54,
      selectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: NavBarItem(
            iconPath: 'assets/icons/solar--chart-square-outline.svg',
            isSelected: _selectedIndex == 0,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: NavBarItem(
            iconPath: 'assets/icons/solar--box-broken.svg',
            isSelected: _selectedIndex == 1,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: NavBarItem(
            iconPath: 'assets/icons/solar--inbox-line-outline.svg',
            isSelected: _selectedIndex == 2,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: NavBarItem(
            iconPath: 'assets/icons/solar--cart-4-outline.svg',
            isSelected: _selectedIndex == 3,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: NavBarItem(
            iconPath: 'assets/icons/solar--menu-dots-outline.svg',
            isSelected: _selectedIndex == 4,
          ),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) => setState(() => _selectedIndex = index),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String iconPath;
  final bool isSelected;

  const NavBarItem({super.key, required this.iconPath, required this.isSelected});

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
        width: 28,
        height: 28,
        colorFilter: ColorFilter.mode(
          isSelected ? Colors.black : Colors.white54,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}


