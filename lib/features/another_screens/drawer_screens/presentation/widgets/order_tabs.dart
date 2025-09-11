import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_strings.dart';

class OrderTabs extends StatelessWidget {
  const OrderTabs({
    super.key,
    required this.selectedTab,
    required this.onChanged,
  });

  final int selectedTab; // 0 = My Purchase, 1 = My Sales
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // My Purchase tab
                GestureDetector(
                  onTap: () => onChanged(0),
                  child: selectedTab == 0
                      ? Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          child: const CommonText(
                            text: AppStrings.myPurchase,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
                          child: const CommonText(
                            text: AppStrings.myPurchase,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.titleColor,
                          ),
                        ),
                ),
                // optional divider between tabs
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  height: 25.h,
                  width: 1,
                  color: AppColors.filledColor,
                ),
                // My Sales tab
                GestureDetector(
                  onTap: () => onChanged(1),
                  child: selectedTab == 1
                      ? Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          child: const CommonText(
                            text: AppStrings.mySales,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
                          child: const CommonText(
                            text: AppStrings.mySales,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.titleColor,
                          ),
                        ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
