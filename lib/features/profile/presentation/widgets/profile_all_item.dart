import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/other_widgets/item.dart';
import '../../../../component/pop_up/common_pop_menu.dart';
import '../../../../component/pop_up/delete_popup.dart';
import '../../../../component/text/common_text.dart';
import '../../../../config/route/app_routes.dart';
import '../../../../services/storage/storage_services.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_images.dart';
import '../../../../utils/constants/app_string.dart';
import 'logout_popup.dart';

class ProfileAllItem extends StatelessWidget {
  const ProfileAllItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.r),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.stroke),
              borderRadius: BorderRadius.circular(20.r)
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: CommonText(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.titleColor,
                      text: "Pro"),
                ),


                16.width,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      CommonText(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.titleColor,
                          text: AppString.upgradeToPremium),
                  
                  
                      CommonText(
                          fontSize: 14,
                          top: 2,
                          fontWeight: FontWeight.w400,
                          color: AppColors.bodyClr,
                          text: AppString.upgradeToPremiumDes),
                  
                    ],
                  ),
                )
              ],
            ),
          ),

          
          CommonText(
            bottom: 16,
            fontSize: 16,
            top: 30,
            fontWeight: FontWeight.w500,
            color: AppColors.titleColor,
            text: AppString.profileSettings,
          ),

          /// Edit Profile item here
          Item(
            iconColor: AppColors.primaryColor,
            icon: Icons.person_outline_sharp,
            title: AppString.personalInformation,
            onTap: () => Get.toNamed(AppRoutes.editProfile),
          ),

          CommonText(
            bottom: 16,
            top: 16,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.titleColor,
            text: AppString.paymentSettings,
          ),

          /// Edit Profile item here
          Item(
            iconColor: AppColors.primaryColor,
            image: AppImages.transaction,
            title: AppString.transaction,
            onTap: () => Get.toNamed(AppRoutes.editProfile),
          ),

          CommonText(
            bottom: 16,
            top: 16,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.titleColor,
            text: AppString.accountSettings,
          ),

          Item(
            iconColor: AppColors.primaryColor,
            icon: Icons.lock_outline_rounded,
            title: AppString.changePassword,
            onTap: () => Get.toNamed(AppRoutes.changePassword),
          ),

          CommonText(
            bottom: 16,
            top: 16,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.titleColor,
            text: AppString.supportInfo,
          ),

          Item(
            iconColor: AppColors.primaryColor,
            icon: Icons.support,
            title: AppString.helpSupports,
            onTap: () => Get.toNamed(AppRoutes.helpAndSupportScreen),
          ),

          12.height,

          Item(
            iconColor: AppColors.primaryColor,
            icon: Icons.privacy_tip_outlined,
            title: AppString.privacyPolicy,
            onTap: () => Get.toNamed(AppRoutes.privacyPolicy),
          ),
          12.height,

          Item(
            iconColor: AppColors.primaryColor,
            image: AppImages.termsCondition,
            title: AppString.termsOfServices,
            onTap: () => Get.toNamed(AppRoutes.termsOfServices),
          ),

          CommonText(
            bottom: 16,
            top: 16,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.titleColor,
            text: AppString.supportInfo,
          ),

          Item(
            iconColor: AppColors.primaryColor,
            image: AppImages.aboutThisApp,
            title: AppString.aboutThisApp,
            onTap: () => Get.toNamed(AppRoutes.aboutUsScreen),
          ),

          12.height,

          Item(
            iconColor: AppColors.primaryColor,
                     icon: Icons.delete,
            title: AppString.deleteAccount,

          ),

          12.height,

          Item(
            iconColor: AppColors.primaryColor,
            icon: Icons.logout,
            title: AppString.logOut,
            onTap: () {
              LogOutPopUp.logoutDialog();
            },
          ),


          30.height,
        ],
      ),
    );
  }
}
