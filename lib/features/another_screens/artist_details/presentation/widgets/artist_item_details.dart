import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class ArtistItemDetails extends StatelessWidget {
  const ArtistItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.r),
      margin: EdgeInsets.only(right: 16.w),

      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.stroke),
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
                  height: 107.h,
                  imageSrc: AppImages.arts,
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
            top: 7,
            left: 6,
            right: 6,
            bottom: 8,
            text: "Whispers of the Forest",
          ),

          Row(
            children: [
              6.width,


              CommonText(
                fontSize: 14,
                color: AppColors.black,
                right: 6,
                fontWeight: FontWeight.w400,
                text: "\$250",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
