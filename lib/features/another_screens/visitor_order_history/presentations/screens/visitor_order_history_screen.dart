import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/features/another_screens/visitor_order_history/presentations/controller/visitor_order_history_controller.dart';
import 'package:tasaned_project/features/another_screens/visitor_order_history/presentations/widgets/visitor_order_history_sheet.dart';
import 'package:tasaned_project/features/another_screens/visitor_order_history/presentations/widgets/visitor_order_list.dart' show VisitorOrderList;
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class VisitorOrderHistoryScreen extends StatelessWidget {
  const VisitorOrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final controller = Get.put(VisitorOrderHistoryController());
    return Scaffold(
      backgroundColor: AppColors.myListBg,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.transparent,
        surfaceTintColor: AppColors.transparent,
        centerTitle: true,
        title: CommonText(
          text: AppString.orderHistory,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.titleColor,
        ),
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back_ios,
            size: 20.sp,
            color: AppColors.titleColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: OutlinedButton.icon(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (_) => VisitorOrderHistorySheet(
                    statuses: controller.statuses,
                    initialSelected: controller.selectedStatusFilter,
                    onApply: (value) {
                      Navigator.of(context).pop();
                      controller.setFilter(value);
                    },
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                side: BorderSide(color: AppColors.stroke),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                foregroundColor: AppColors.titleColor,
              ),
              icon: Icon(Icons.filter_alt_outlined, size: 16.sp),
              label: CommonText(
                text: AppString.filter,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.titleColor,
              ),
            ),
          ),
        ],
      ),
      body: GetBuilder<VisitorOrderHistoryController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
           
                12.height,
               
                VisitorOrderList(
                  items: controller.filteredList,
                  
                ),
              ],
            ),
          );
        },
      ),

      bottomNavigationBar: CommonBottomNavBar(currentIndex:1),

  
    );
  }
}