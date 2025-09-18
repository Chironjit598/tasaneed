import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class MyEventItem extends StatelessWidget {
  const MyEventItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(right: 16.w),
      width: 158.w,
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
                  width: 158.w,
                  fill: BoxFit.fill,
                  height: 112.h,
                  imageSrc: AppImages.eventImage,
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
          // Content below image
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Date badge
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.yelloFade,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonText(
                            text: "17",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                          CommonText(
                            text: "Aug",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.titleColor,
                          ),
                        ],
                      ),
                    ),
                    4.width,

                    // Title area wrapped in Expanded to avoid overflow
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            text: "Colors of the Unseen",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.titleColor,
                            maxLines: 1,
                          ),
                          5.height,
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 16.sp,
                                color: AppColors.bodyClr,
                              ),
                              Expanded(
                                child: CommonText(
                                  left: 6,
                                  text: "Metus Street, CA",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.bodyClr,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
