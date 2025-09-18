import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/button/common_button.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class DeletePopUp {
  static void show({required VoidCallback onConfirm}) {
    showDialog(
      context: Get.context!,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Close button
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      padding: EdgeInsets.all(4.h),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.bodyClr),
                      ),
                      child: Icon(Icons.close, color: AppColors.bodyClr, size: 18.sp),
                    ),
                  ),
                ),
                4.height,
                Icon(Icons.warning_amber_rounded, size: 75.sp, color:Colors.amber),
                12.height,
                CommonText(
                  text: AppString.areYouSureYouWantToDelete,
                  fontSize: 22,
                  maxLines: 2,
                  left: 22,
                  right: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.redClr,
                  textAlign: TextAlign.center,
                ),
                10.height,
                CommonText(
                  text: AppString.deleteWarningDes,
                  fontSize: 12,
                  maxLines: 3,
                  fontWeight: FontWeight.w400,
                  color: AppColors.bodyClr,
                  textAlign: TextAlign.center,
                ),
                16.height,
                Divider(color: AppColors.stroke, height: 1),
                16.height,
                Row(
                  children: [
                    Expanded(
                      child: CommonButton(
                        buttonRadius: 60,
                        titleColor: AppColors.primaryColor,
                        borderColor: AppColors.primaryColor,
                        buttonColor: AppColors.white,
                        titleText: AppString.cancel,
                        onTap: () => Get.back(),
                      ),
                    ),
                    12.width,
                    Expanded(
                      child: CommonButton(
                        buttonColor: AppColors.redClr,
                        borderColor: AppColors.redClr,
                        titleText: AppString.yesConfirm,
                        buttonRadius: 60,
                        onTap: () {
                          Get.back();
                          onConfirm();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}