import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/widgets/category_item.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';

import '../../../../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../../user_home/presentation/widgets/arts_item.dart';
import '../widget/category_item_vertical.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(

            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios, size: 23.sp,color: AppColors.titleColor,)),
        title: CommonText(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.titleColor,
            text: AppString.allCategories),
      ),

      body:
      Expanded(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: GridView.builder(

              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,  // Number of columns
                crossAxisSpacing: 1, // Horizontal space between items
                mainAxisSpacing:20 , // Vertical space between items
              ), itemBuilder: (context, index){

            return CategoryItemVertical();
          }),
        ),
      ),
      bottomNavigationBar: CommonBottomNavBar(currentIndex: 1),

    );
  }
}
