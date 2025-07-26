import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_icons.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class PopularArtistItem extends StatelessWidget {
  const PopularArtistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 20.w),
      child: Column(

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
              fontSize: 14,
              color: AppColors.black,
              fontWeight: FontWeight.w400,
              text: "John Henry")
        ],
      ),
    );
  }
}
