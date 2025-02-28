import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/main_card.dart';
import '../widgets/search_filter_row.dart';
import '../widgets/stats_card.dart';
import '../widgets/tab_bar_section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final screenHeight = MediaQuery.of(context).size.height;
    print(' Screen Height: $screenHeight');

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const SearchFilterRow(),
            const SizedBox(height: 20),
            const SizedBox(height: 50, child: TabBarSection()),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  // MainCard Section
                  SizedBox(
                    height: isPortrait
                        ? screenHeight * 0.43
                        : (screenHeight < 850
                            ? screenHeight * 0.55
                            : (screenHeight / 946) * (946 * 0.45)),
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        MainCard(
                          title: 'Top 5 products by spend',
                          totalScore: '2,985',
                          amount: '\$1,815.67',
                          productId: 'B07MCGRV7M',
                        ),
                        MainCard(
                          title: 'High Performing Items',
                          totalScore: '4,521',
                          amount: '\$3,024.89',
                          productId: 'A12XYZ45',
                        ),
                        MainCard(
                          title: 'Best Selling Category',
                          totalScore: '7,842',
                          amount: '\$5,789.10',
                          productId: 'C98LMN23',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // StatsCard Section
                  SizedBox(
                    height: isPortrait
                        ? (screenHeight / 890) * (890 * 0.16) < 140
                            ? 140
                            : (screenHeight / 890) * (890 * 0.16)
                        : (screenHeight < 900
                            ? screenHeight * 0.2
                            : screenHeight * 0.2),
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        StatsCard(
                          title: 'Orders Created',
                          dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                          amount: '\$134,970',
                          subAmount: '\$128,451',
                          change: '+12.98%',
                          isPositive: true,
                        ),
                        StatsCard(
                          title: 'Total Sales',
                          dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                          amount: '\$2,145,132.80',
                          subAmount: '\$128,451',
                          change: '+12.98%',
                          isPositive: true,
                        ),
                        StatsCard(
                          title: 'Revenue Growth',
                          dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                          amount: '\$789,312.50',
                          subAmount: '\$768,450',
                          change: '-8.24%',
                          isPositive: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
