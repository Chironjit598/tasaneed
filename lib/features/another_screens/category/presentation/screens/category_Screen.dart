import 'package:flutter/material.dart';
import 'package:tasaned_project/component/text/common_text.dart';

import '../../../../../component/bottom_nav_bar/common_bottom_bar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText(text: "Category"),
      ),

      bottomNavigationBar: CommonBottomNavBar(currentIndex: 1),

    );
  }
}
