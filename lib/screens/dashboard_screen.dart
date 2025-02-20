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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 20),

            // Search and Filter Row
            const SearchFilterRow(),

            const SizedBox(height: 20),

            // Tab Bar Section
            const SizedBox(height: 50, child: TabBarSection()),

            const SizedBox(height: 30),

            // Main Cards Row
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.40,
              child: ListView(
                scrollDirection: Axis.horizontal, //
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

            // Stats Cards Row
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  StatsCard(
                    title: 'Orders Created',
                    dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                    amount: '\$134,970',
                    change: '+12.98%',
                  ),
                  StatsCard(
                    title: 'Total Sales',
                    dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                    amount: '\$2,145,132.80',
                  ),
                  StatsCard(
                    title: 'Revenue Growth',
                    dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                    amount: '\$789,312.50',
                    change: '-8.24%',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
