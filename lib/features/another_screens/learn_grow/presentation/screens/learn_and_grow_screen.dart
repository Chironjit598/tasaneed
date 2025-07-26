import 'package:flutter/material.dart';
import 'package:tasaned_project/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';

class LearnAndGrowScreen extends StatelessWidget {
  const LearnAndGrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: CommonText(text: "Learn and Grow Screen"),
      ),
      bottomNavigationBar: CommonBottomNavBar(currentIndex: 3),
    );
  }
}
