import 'package:flutter/material.dart';
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
        _buildNavItem(Icons.dashboard_outlined, 0),
        _buildNavItem(Icons.archive_outlined, 1),
        _buildNavItem(Icons.folder_outlined, 2),
        _buildNavItem(Icons.delete_outline, 3),
        _buildNavItem(Icons.more_horiz, 4),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      icon: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? const Color(0xFFE2D291) : Colors.transparent,
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.black : Colors.white54,
        ),
      ),
      label: '',
    );
  }
}



// class CustomBottomNavBar extends StatefulWidget {
//   const CustomBottomNavBar({super.key});

//   @override
//   _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
// }

// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Colors.black,
//       unselectedItemColor: Colors.white54,
//       selectedItemColor: Colors.black,
//       type: BottomNavigationBarType.fixed,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       currentIndex: _selectedIndex,
//       onTap: _onItemTapped,
//       items: [
//         _buildNavItem(Icons.dashboard_outlined, 0),
//         _buildNavItem(Icons.archive_outlined, 1),
//         _buildNavItem(Icons.folder_outlined, 2),
//         _buildNavItem(Icons.delete_outline, 3),
//         _buildNavItem(Icons.more_horiz, 4),
//       ],
//     );
//   }

//   BottomNavigationBarItem _buildNavItem(IconData icon, int index) {
//     return BottomNavigationBarItem(
//       icon: NavIconWidget(icon: icon, isSelected: _selectedIndex == index),
//       label: '',
//     );
//   }
// }

// class NavIconWidget extends StatelessWidget {
//   final IconData icon;
//   final bool isSelected;

//   const NavIconWidget({
//     super.key,
//     required this.icon,
//     required this.isSelected,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: isSelected ? const Color(0xFFE2D291) : Colors.transparent,
//       ),
//       child: Icon(
//         icon,
//         color: isSelected ? Colors.black : Colors.white54,
//       ),
//     );
//   }
// }



//==========================================
// class NavItem extends StatelessWidget {
//   final IconData icon;
//   final int index;
//   final int selectedIndex;

//   const NavItem({
//     Key? key,
//     required this.icon,
//     required this.index,
//     required this.selectedIndex,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     bool isSelected = selectedIndex == index;
//     return BottomNavigationBarItem(
//       icon: Container(
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           shape:
// BoxShape.circle,
//           color: isSelected ? const Color(0xFFE2D291) : Colors.transparent,
//         ),
//         child: Icon(
//           icon,
//           color: isSelected ? Colors.black : Colors.white54,
//         ),
//       ),
//     );
//   }
// }