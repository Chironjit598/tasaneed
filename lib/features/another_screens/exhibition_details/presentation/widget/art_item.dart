import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class ArtItem extends StatelessWidget {
  const ArtItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: [
    
        ClipOval(
          child: CommonImage(
              height: 60,
              width: 60,
              fill: BoxFit.fill,
              imageSrc: AppImages.female),
        ),
    
        6.height,
    
        CommonText(
            fontSize: 12,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            text: "John Henry"),
    
            3.height,
    
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.group_outlined, size: 18.sp, color: AppColors.bodyClr),

                3.width,

                CommonText(text: "1200",
                
                fontSize: 10,
                color: AppColors.bodyClr,
                fontWeight: FontWeight.w400,
                )
              ],
            )
      ],
    );
  }
}
