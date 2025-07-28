import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class CategoryItemVertical extends StatelessWidget {
  const CategoryItemVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(


          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(width: 3, color: AppColors.stroke)
          ),

          child: CommonImage(

            width: 98,
              height: 93,
              fill: BoxFit.fill,
              imageSrc: AppImages.category),
        ),

        3.height,

        CommonText(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
            text: "Abstract ")
      ],
    );
  }
}
