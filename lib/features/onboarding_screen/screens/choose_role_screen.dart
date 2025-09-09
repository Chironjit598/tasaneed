import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/button/common_button.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/features/onboarding_screen/controller/choose_role_controller.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';
import 'package:tasaned_project/config/route/app_routes.dart';

class ChooseRoleScreen extends StatelessWidget {
  const ChooseRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Get.back(),
        ),
      ),
      body: GetBuilder<ChooseRoleController>(
        init: ChooseRoleController(),
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                50.height,
              
               

                CommonImage(imageSrc: AppImages.logo, height: 64.r, width: 64.r,),

                30.height,

                CommonText(
                  text: AppString.chooseRoleTitle,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFB07353),
                ),

                10.height,

                CommonText(
                  text: AppString.chooseRoleSubtitle,
                  fontSize: 13,
                  color: AppColors.bodyClr,
                  
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                ),

                24.height,

                _RoleTile(
                  index: 0,
                  title: AppString.roleGeneralUserCollectorTitle,
                  subtitle: AppString.roleGeneralUserCollectorDes,
                  isSelected: controller.selectedIndex.value == 0,
                  onTap: () => controller.select(0),
                  leadingIcon: Icons.account_circle_outlined,
                ),
                12.height,
                _RoleTile(
                  index: 1,
                  title: AppString.roleArtistCuratorTitle,
                  subtitle: AppString.roleArtistCuratorDes,
                  isSelected: controller.selectedIndex.value == 1,
                  onTap: () => controller.select(1),
                  leadingIcon: Icons.palette_outlined,
                ),
                12.height,
                _RoleTile(
                  index: 2,
                  title: AppString.roleMuseumEduTitle,
                  subtitle: AppString.roleMuseumEduDes,
                  isSelected: controller.selectedIndex.value == 2,
                  onTap: () => controller.select(2),
                  leadingIcon: Icons.museum_outlined,
                ),

                28.height,

                CommonButton(
                  titleText: AppString.continues,
                  buttonRadius: 50,
                  onTap: () {
                    // You can pass the selected role forward if needed
                    Get.offAllNamed(AppRoutes.signUp, arguments: {
                      'role': controller.selectedRoleKey,
                    });
                  },
                ),

                16.height,
              ],
            ),
          );
        },
      ),
    );
  }
}

class _RoleTile extends StatelessWidget {
  final int index;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;
  final IconData leadingIcon;

  const _RoleTile({
    required this.index,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.onTap,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.stroke),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 1)),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 44.r,
              width: 44.r,
              decoration: BoxDecoration(
                color: AppColors.background,
                shape: BoxShape.circle,
              ),
              child: Icon(leadingIcon, color: AppColors.primaryColor),
            ),
            12.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: title,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.titleColor,
                    maxLines: 2,
                  ),
                  6.height,
                  CommonText(
                    text: subtitle,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.bodyClr,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            10.width,
            _Radio(isSelected: isSelected),
          ],
        ),
      ),
    );
  }
}

class _Radio extends StatelessWidget {
  final bool isSelected;
  const _Radio({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.r,
      width: 22.r,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? AppColors.primaryColor : Colors.grey, width: 2),
      ),
      child: isSelected
          ? Center(
              child: Container(
                height: 12.r,
                width: 12.r,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            )
          : null,
    );
  }
}
