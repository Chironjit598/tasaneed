import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class ExhibitionItem extends StatelessWidget {
  const ExhibitionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.w),
      width: 165.w,
      height: 190.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: CommonImage(
                  width: 148.w,
                  fill: BoxFit.fill,
                  height: 112.h,
                  imageSrc: AppImages.exhibition,
                ),
              ),

              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  padding: EdgeInsets.all(4),

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white,
                  ),
                  child: Icon(size: 16.sp, Icons.favorite_border),
                ),
              ),
            ],
          ),

          CommonText(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            top: 5,
            left: 6,
            right: 6,
            bottom: 8,
            text: "Urban Abstractions",
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: [
                Icon(
                    size: 18.sp,
                    color: AppColors.bodyClr,
                    Icons.account_balance_rounded),
                CommonText(
                    left: 4,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.bodyClr,
                    text: "Classical Masters")
               
              ],
            ),
          ),
          4.height,
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: [
                Icon(
                    size: 18.sp,
                    color: AppColors.bodyClr,
                    Icons.calendar_month),
                CommonText(
                    left: 4,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.bodyClr,
                    text: "Jul 10 - Nov 20")

              ],
            ),
          ),
        ],
      ),
    );
  }
}
