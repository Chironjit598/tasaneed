
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.stroke
        )
      ),
      
      child: Row(
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: CommonImage(
                height: 68,
                width: 68,
                fill: BoxFit.cover,
                imageSrc: AppImages.learning),
          ),
          
          13.width,
          
          Expanded(
            child: Column(children: [
              
              CommonText(
            
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.titleColor,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  text: "Introduction to Acrylics & Basic Techniques"),
              
              5.height,
              
              Row(
                children: [
                  Icon(
                    size: 15.sp,
                    Icons.watch_later_outlined,color: AppColors.bodyClr,),
                  
                  CommonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      left: 5,
                      text: "05:10")
                ],
              )
            ],),
          ),

          Container(
            padding: EdgeInsets.all(3.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primaryColor)
            ),
            child: Icon(

              size: 18.sp,
              Icons.play_arrow, color: AppColors.primaryColor,),
          )
        ],
      ),
    );
  }
}
