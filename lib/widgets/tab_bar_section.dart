import 'package:flutter/material.dart';

class TabBarSection extends StatefulWidget {
  const TabBarSection({super.key});

  @override

  _TabBarSectionState createState() => _TabBarSectionState();
}

class _TabBarSectionState extends State<TabBarSection> {
  int _selectedIndex = 1; 

  final List<Map<String, dynamic>> _tabs = [
    {'text': 'Overview', 'index': 1},
    {'text': 'PPC', 'index': 2},
    {'text': 'Year to Year', 'index': 3},
    {'text': 'More', 'index': 4},
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _tabs.length,
        itemBuilder: (context, index) {
          return TabButton(
            text: _tabs[index]['text'],
            index: _tabs[index]['index'],
            isActive: _selectedIndex == _tabs[index]['index'],
            onTap: _onTabSelected,
          );
        },
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String text;
  final int index;
  final bool isActive;
  final Function(int) onTap;

  const TabButton({
    super.key,
    required this.text,
    required this.index,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index), 
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isActive ? Colors.white : Colors.white54,
                  width: 1.5,
                ),
                color: isActive ? Colors.white24 : Colors.transparent, 
              ),
              child: Text(
                index.toString().padLeft(2, '0'),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: isActive ? Colors.white : Colors.white54,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                color: isActive ? Colors.white : Colors.white54,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// class TabBarSection extends StatelessWidget {
//   const TabBarSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           _buildTabButton('Overview', 1, true),
//           _buildTabButton('PPC', 2, false),
//           _buildTabButton('Year to Year', 3, false),
//           _buildTabButton('More', 4, false),
//         ],
//       ),
//     );
//   }

//   Widget _buildTabButton(String text, int index, bool isActive) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(6),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(color: Colors.white54, width: 1.5),
//             ),
//             child: Text(
//               index.toString().padLeft(2, '0'),
//               style: const TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white54,
//               ),
//             ),
//           ),
//           const SizedBox(width: 8),
//           Text(
//             text,
//             style: TextStyle(
//               color: isActive ? Colors.white : Colors.white54,
//               fontWeight: FontWeight.bold,
//               fontSize: 17,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
