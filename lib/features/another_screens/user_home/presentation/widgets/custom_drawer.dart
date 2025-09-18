// drawer.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/button/common_button.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/config/route/app_routes.dart';
import 'package:tasaned_project/services/storage/storage_services.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,

      child: Column(
        children: [
          // Header Section with profile image, name, and email
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 80.w,
                    height: 80.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 2,
                      ),
                    ),
                    child: ClipOval(
                      child: CommonImage(
                        fill: BoxFit.cover,
                        imageSrc: AppImages.female,
                      ),
                    ),
                  ),
                  10.height,
                  CommonText(
                    text: "Jack Henry",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.titleColor,
                  ),
                  6.height,
                  LocalStorage.myRoll == "visitor"
                      ? CommonButton(
                          buttonWidth: 130,
                          buttonRadius: 60,
                          titleWeight: FontWeight.w400,
                          buttonHeight: 35,
                          titleSize: 12,
                          buttonColor: AppColors.transparent,
                          titleColor: AppColors.primaryColor,
                          titleText: AppString.viewProfile,
                          onTap: () {
                            Get.toNamed(AppRoutes.profile);
                          },
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back();
                                Get.toNamed(AppRoutes.followingScreen);
                              },
                              child: CommonText(
                                text: "570 Following",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            12.width,
                            InkWell(
                              onTap: () {
                                Get.back();
                                Get.toNamed(AppRoutes.followersScreen);
                              },
                              child: CommonText(
                                text: "1.2k Followers",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),

          12.height,
          _DrawerDivider(),

          //========================Saved item=========================
          _DrawerRowItem(
            icon: Icons.bookmark_border,
            text: AppString.saved,
            onTap: () => Get.toNamed(AppRoutes.savedScreen),
          ),
          _DrawerDivider(),

          LocalStorage.myRoll == "visitor"
              ?
              
              //========================Following item=========================
               _DrawerRowItem(
                  icon: Icons.person_2_outlined,
                  text: AppString.following,
                  onTap: () => Get.toNamed(AppRoutes.followingScreen),
                )
              : 
              
              
              //========================Order History item=========================
              _DrawerRowItem(
                  icon: Icons.shopping_cart_outlined,
                  text: AppString.orderHistory,
                  onTap: () => Get.toNamed(AppRoutes.purchaseHistory),
                ),

          _DrawerDivider(),


           //========================Saved item=========================
          _DrawerRowItem(
            icon: Icons.bookmark_border,
            text: AppString.myListing,
            onTap: () => Get.toNamed(AppRoutes.myListScreen),
          ),
          _DrawerDivider(),
        
          Expanded(child: SizedBox()),
          Padding(
            padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 24.h),
            child: InkWell(
              onTap: () {
                Navigator.of(context).maybePop();
              },
              child: Row(
                children: [
                  Icon(Icons.logout, color: AppColors.primaryColor),
                  CommonText(
                    left: 8,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    text: AppString.logOut,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawerDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.w, right: 35.w),
      width: double.infinity,
      color: AppColors.stroke,
      height: 1,
    );
  }
}

class _DrawerRowItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const _DrawerRowItem({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
        child: Row(
          children: [
            Icon(icon, size: 22.sp, color: AppColors.titleColor),
            CommonText(
              left: 12,
              color: AppColors.titleColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              textAlign: TextAlign.start,
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
