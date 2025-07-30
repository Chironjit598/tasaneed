import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constants/app_colors.dart';
import '../image/common_image.dart';
import '../text/common_text.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      this.icon,
      required this.title,
      this.image = "",
        this.iconColor=AppColors.primaryColor,
      this.disableDivider = false,
      this.onTap,
      this.color = AppColors.titleColor,
      this.vertical = 11,
      this.horizontal = 22,
      this.disableIcon = false});

  final IconData? icon;
  final String title;
  final String image;
  final bool disableDivider;
  final bool disableIcon;
  final VoidCallback? onTap;
  final Color color;
  final Color iconColor;
  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.stroke)
        ),
        padding: EdgeInsets.symmetric(
            horizontal: horizontal.w, vertical: vertical.h),
        child: Column(
          children: [
            Row(
              children: [

                Container(
                  padding: EdgeInsets.all(6.r),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.redBg
                  ),
                  child:  icon != null
                      ? Icon(
                    icon,
                    color: iconColor,
                  )
                      : CommonImage(imageSrc: image),
                )
               ,
                CommonText(
                  text: title,
                  color: color,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  left: 16,
                ),
                const Spacer(),
                disableIcon
                    ? const SizedBox()
                    : Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.sp,
                      )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
