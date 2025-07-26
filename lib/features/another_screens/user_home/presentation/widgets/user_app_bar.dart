import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../../../../../component/image/common_image.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white
      ),
      height: 80.h,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          children: [
            CommonImage(
                height: 32,
                width: 71,

                imageSrc:AppImages.logoWithText),

            Spacer(),

            Icon(
                size: 30.sp,
                Icons.shopping_cart_outlined),
            4.width,

            Icon(
                size: 30.sp,
                Icons.menu_rounded),
          ],
        ),
      ),
    );
  }
}
