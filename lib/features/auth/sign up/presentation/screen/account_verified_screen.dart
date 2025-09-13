import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../component/button/common_button.dart';
import '../../../../../component/image/common_image.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../config/route/app_routes.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_string.dart';
import '../../../../../utils/extensions/extension.dart';

class AccountVerifiedScreen extends StatelessWidget {
  const AccountVerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.03,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.splashBg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                35.height,
                InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.textFiledColor,
                  ),
                ),
                190.height,
                Center(
                  child: CommonImage(
                    height: 80.r,
                    width: 80.r,
                    imageSrc: AppImages.confirm,
                    fill: BoxFit.contain,
                  ),
                ),
                24.height,
                CommonText(
                  text: AppString.accountVerified,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ).center,
                16.height,
                CommonText(
                  text: AppString.accountVerifiedDes,
                  fontSize: 14,
                  color: AppColors.bodyClr,
                  fontWeight: FontWeight.w400,
                  left: 16,
                  right: 16,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ).center,
                32.height,
                CommonButton(
                  titleText: AppString.backToLogin,
                  buttonRadius: 60,
                  onTap: () => Get.offAllNamed(AppRoutes.signIn),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
