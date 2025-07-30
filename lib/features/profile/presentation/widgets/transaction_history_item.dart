import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_colors.dart';

class TransationHistoryItem extends StatelessWidget {
  const TransationHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      height: 77.h,
      padding: EdgeInsets.all(10.r),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.stroke)

      ),
      child: Row(


        children: [
          Container(
            padding: EdgeInsets.all(10.r),



            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.stroke

            ),
            child: CommonImage(

                imageSrc: AppImages.getTransaction),
          ),

          10.width,

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                  bottom: 7.h,
                  fontSize: 14.sp,

                  color: AppColors.titleColor,
                  text: "Alfredo Schleifer"),

              SizedBox(
                width: 160.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        text: "14:30 AM"),

                    Container(
                      height:12.h,
                      width: 1,
                      color: AppColors.bodyClr,

                    ),

                    CommonText(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        text: "Nov 2, 2023"),
                  ],
                ),
              ),


            ],
          ),
          Spacer(),


          CommonText(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.red,
              text: "\$454.43")
        ],
      ),
    );
  }
}
