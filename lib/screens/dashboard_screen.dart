import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_task/widgets/nav_rail.dart';

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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final shortestSide = MediaQuery.of(context).size.shortestSide;

    final isLargeScreen = shortestSide >= 600;
    final useSideNavRail = isLargeScreen && screenWidth >= 640;
    print('Screen Width: $screenWidth, Screen Height: $screenHeight');

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: CustomAppBar(),
      
      ),
      body: Row(
        children: [
          if (useSideNavRail) const CustomNavRail(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const SizedBox(height: 50, child: SearchFilterRow()),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children: [
                        // MainCard Section with updated height calculation
                        const SizedBox(height: 50, child: TabBarSection()),
                        const SizedBox(height: 30),
                        SizedBox(
                          height: 300,
                          // width: double.infinity,
                          child: ListView(
                            shrinkWrap: true,
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
                          height: max(
                              MediaQuery.of(context).size.height * 0.2, 150),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              print("Max Width: ${constraints.maxWidth}");
                              print("Max Height: ${constraints.maxHeight}");
                              double cardWidth = constraints.maxWidth * 0.3;
                              cardWidth = cardWidth.clamp(200, 300);
                              double cardHeight =
                                  max(constraints.maxHeight * 0.6, 145);
                              print("card Height: $cardHeight");
                              cardHeight = cardHeight.clamp(145, 150);
                              print("card Height after clamp: $cardHeight");

                              return ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SizedBox(
                                    width: cardWidth,
                                    height: cardHeight,
                                    child: const StatsCard(
                                      title: 'Orders Created',
                                      dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                                      amount: '\$134,970',
                                      subAmount: '\$128,451',
                                      change: '+12.98%',
                                      isPositive: true,
                                    ),
                                  ),
                                  SizedBox(
                                    width: cardWidth,
                                    height: cardHeight,
                                    child: const StatsCard(
                                      title: 'Total Sales',
                                      dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                                      amount: '\$2,145,132.80',
                                      subAmount: '\$128,451',
                                      change: '+12.98%',
                                      isPositive: true,
                                    ),
                                  ),
                                  SizedBox(
                                    width: cardWidth,
                                    height: cardHeight,
                                    child: const StatsCard(
                                      title: 'Revenue Growth',
                                      dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                                      amount: '\$789,312.50',
                                      subAmount: '\$768,450',
                                      change: '-8.24%',
                                      isPositive: false,
                                    ),
                                  ),
                                  SizedBox(
                                    width: cardWidth,
                                    height: cardHeight,
                                    child: const StatsCard(
                                      title: 'Revenue Growth',
                                      dateRange: 'Oct 16 / 21 - Nov 14 / 21',
                                      amount: '\$789,312.50',
                                      subAmount: '\$768,450',
                                      change: '-8.24%',
                                      isPositive: false,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: useSideNavRail ? null : const CustomBottomNavBar(),
    );
  }
}